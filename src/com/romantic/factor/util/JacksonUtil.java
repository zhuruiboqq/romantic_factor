/**
 * @(#)JacksonUtil.java, 2012-10-19. Copyright 2012 Jodo, Inc. All rights
 *                       reserved. JODO PROPRIETARY/CONFIDENTIAL. Use is subject
 *                       to license terms.
 */
package com.romantic.factor.util;

import org.apache.commons.lang.StringUtils;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.annotate.JsonSerialize.Inclusion;
import org.codehaus.jackson.type.TypeReference;

import com.romantic.factor.constants.Constants;

/**
 * 使用Jackson实现的数据序列化/反序列化器
 * 
 * @author Treeman
 */
public class JacksonUtil {

	private static ObjectMapper mapper = new ObjectMapper();

	static {
		mapper.configure(org.codehaus.jackson.map.SerializationConfig.Feature.WRITE_NULL_MAP_VALUES, false);
		mapper.setSerializationInclusion(Inclusion.NON_NULL);
		mapper.configure(org.codehaus.jackson.map.SerializationConfig.Feature.WRITE_DATES_AS_TIMESTAMPS, false);
		mapper.setSerializationConfig(mapper.getSerializationConfig().withDateFormat(Constants.NORMAL_DATETIME_FORMAT));
		mapper.configure(org.codehaus.jackson.map.DeserializationConfig.Feature.FAIL_ON_UNKNOWN_PROPERTIES, false);
	}

	public static <T> T doJacksonDeserialize(String str, Class<T> clazz) {
		if (StringUtils.isBlank(str)) {
			return null;
		}
		try {
			return mapper.readValue(str, clazz);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	@SuppressWarnings("unchecked")
	public static <T> T doJacksonDeserialize(String str, TypeReference<T> typeRef) {
		if (StringUtils.isBlank(str)) {
			return null;
		}
		try {
			return (T) mapper.readValue(str, typeRef);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	public static String doJacksonSerialize(Object object) {
		if (null == object) {
			return "null";
		}
		try {
			return mapper.writeValueAsString(object);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

}
