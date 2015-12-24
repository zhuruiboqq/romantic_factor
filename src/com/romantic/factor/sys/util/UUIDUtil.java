package com.romantic.factor.sys.util;

import java.util.Random;

public class UUIDUtil implements java.io.Serializable {
	private static final long serialVersionUID = 846703324199283832L;
	private Object lock = new Object();
	private volatile long seed = 0;// 5位
	private volatile long delim = 0;// 1 位
	private volatile long sequence = 0;// 13位
	private static Random randomNumberGenerator = new Random();
	private static UUIDUtil uuid = new UUIDUtil();

	public UUIDUtil() {
		seed();
	}

	public void seed() {
		synchronized (lock) {
			seed = randomNumberGenerator.nextInt(99999);
			while (seed < 10000) {
				seed *= 10;
				while (seed == 0) {
					seed = randomNumberGenerator.nextInt(99999);
				}
			}
			seed *= 100000000000000L;// 14
			delim = randomNumberGenerator.nextInt(9) * 10000000000000L;// 13
			sequence = System.currentTimeMillis();
		}
	}

	/**
	 * 19位UUID：5位(seed)+1位delim+13位(sequence) 
	 * 
	 * @return
	 */
	public long genUuid() {
		synchronized (lock) {
			sequence++;
			return seed + delim + sequence;
		}
	}

	/**
	 * @return 13位序列号
	 */
	public long getSequence() {
		return sequence;
	}

	/**
	 * @return 19位整数id
	 */
	public static long uuid() {
		return uuid_positive();
	}

	public static long uuid_positive() {
		do {
			long id = uuid.genUuid();
			if (id > 0) {
				return id;
			}
			uuid.seed();
		} while (true);
	}

	/**
	 * 是否是有效的uuid
	 * 
	 * @param uuid
	 * @return 正确的uuid，返回true
	 */
	public static boolean validUuid(long uuid) {
		return String.valueOf(uuid).length() == 19;
	}

	/**
	 * 是否是有效的uuid
	 * 
	 * @param uuid
	 * @return 正确的uuid，返回true
	 */
	public static boolean validUuid(String uuid) {
		if (uuid == null || uuid.trim().length() == 0)
			return false;

		try {
			return validUuid(Long.parseLong(uuid));
		} catch (NumberFormatException e) {
			return false;
		}
	}

	/**
	 * @return 36位整数ID
	 */
	public static long parseUuid(String uuid, long def) {
		if (uuid != null && uuid.matches("\\d+")) {
			return Long.parseLong(uuid);
		}
		return def;
	}

	public static long parseUuid(Object uuid, long def) {
		if (uuid == null)
			return def;
		return parseUuid(uuid.toString(), def);
	}
}