/**
 * @(#)DESTool.java, 2012-7-13. Copyright 2012 Jodo, Inc. All rights
 *                   reserved. JODO PROPRIETARY/CONFIDENTIAL. Use is subject
 *                   to license terms.
 */
package com.romantic.factor.util;

import java.security.Key;

import javax.crypto.Cipher;
import org.apache.commons.codec.binary.Base64;

/**
 * @author Treeman
 */
public class DESTool {

    Key key;

    public DESTool(String str) {
        setKey(str);// 生成密匙
    }

    public DESTool() {
        setKey("12345678");
    }

    // public void setKey(String strKey) {
    // try {
    // KeyGenerator _generator = KeyGenerator.getInstance("DES");
    // _generator.init(new SecureRandom(strKey.getBytes()));
    // this.key = _generator.generateKey();
    //
    // System.out.print("key - " + strKey + " - "
    // + this.key.getEncoded().length + " : ");
    // for (int i = 0; i < this.key.getEncoded().length; i++) {
    // System.out.print(this.key.getEncoded()[i] + ", ");
    // }
    // System.out.println();
    //
    // _generator = null;
    // } catch (Exception e) {
    // throw new RuntimeException("setKey error. Cause: " + e);
    // }
    // }

    /**
     * 根据参数生成KEY
     */
    public void setKey(String strKey) {
        byte[] arrBTmp = strKey.getBytes();

        // 创建一个空的8位字节数组（默认值为0）
        byte[] arrB = new byte[8];

        // 将原始字节数组转换为8位
        for (int i = 0; i < arrBTmp.length && i < arrB.length; i++) {
            arrB[i] = arrBTmp[i];
        }

        // 生成密钥
        Key key = new javax.crypto.spec.SecretKeySpec(arrB, "DES");

        this.key = key;
    }

    /**
     * 加密String明文输入,String密文输出
     */
    public String getEncString(String strMing) {
        byte[] byteMi = null;
        byte[] byteMing = null;
        String strMi = "";
        // BASE64Encoder base64en = new BASE64Encoder();
        try {
            byteMing = strMing.getBytes("UTF8");
            byteMi = this.getEncCode(byteMing);
            // strMi = base64en.encode(byteMi);
            strMi = new String(Base64.encodeBase64(byteMi));
        } catch (Exception e) {
            throw new RuntimeException("getEncString error. Cause: " + e);
        } finally {
            // base64en = null;
            byteMing = null;
            byteMi = null;
        }
        return strMi;
    }

    /**
     * 解密 以String密文输入,String明文输出
     *
     * @param strMi
     * @return
     */
    public String getDesString(String strMi) {
        // BASE64Decoder base64De = new BASE64Decoder();
        byte[] byteMing = null;
        byte[] byteMi = null;
        String strMing = "";
        try {
            // byteMi = base64De.decodeBuffer(strMi);
            byteMi = Base64.decodeBase64(strMi.getBytes());
            byteMing = this.getDesCode(byteMi);
            strMing = new String(byteMing, "UTF8");
        } catch (Exception e) {
            throw new RuntimeException("getDesString error. Cause: " + e);
        } finally {
            // base64De = null;
            byteMing = null;
            byteMi = null;
        }
        return strMing;
    }

    /**
     * 加密以byte[]明文输入,byte[]密文输出
     *
     * @param byteS
     * @return
     */
    private byte[] getEncCode(byte[] byteS) {
        byte[] byteFina = null;
        Cipher cipher;
        try {
            cipher = Cipher.getInstance("DES");
            cipher.init(Cipher.ENCRYPT_MODE, key);
            byteFina = cipher.doFinal(byteS);
        } catch (Exception e) {
            throw new RuntimeException("getEncCode error. Cause: " + e);
        } finally {
            cipher = null;
        }
        return byteFina;
    }

    /**
     * 解密以byte[]密文输入,以byte[]明文输出
     *
     * @param byteD
     * @return
     */
    private byte[] getDesCode(byte[] byteD) {
        Cipher cipher;
        byte[] byteFina = null;
        try {
            cipher = Cipher.getInstance("DES");
            cipher.init(Cipher.DECRYPT_MODE, key);
            byteFina = cipher.doFinal(byteD);
        } catch (Exception e) {
            throw new RuntimeException("getDesCode error. Cause: " + e);
        } finally {
            cipher = null;
        }
        return byteFina;
    }

    public static void main(String args[]) {
        DESTool des = new DESTool();
        // 设置密钥
        des.setKey("he02-=28,.wfj/`z");

        String str1 = "uid:zhangsuiwen,time:1342194129748,daytime:1342108800000";
        // DES加密
        String str2 = des.getEncString(str1);
        String deStr = des.getDesString(str2);
        System.out.println("密文:" + str2);
        // DES解密
        System.out.println("明文:" + deStr);

    }
}
