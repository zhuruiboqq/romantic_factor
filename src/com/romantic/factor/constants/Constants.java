package com.romantic.factor.constants;

import java.io.File;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

/**
 * @author Treeman
 */
public class Constants {

    public static final DateFormat NORMAL_DATETIME_FORMAT = new SimpleDateFormat(
            "yyyy-MM-dd HH:mm:ss");

    public static final DateFormat NORMAL_DATE_FORMAT = new SimpleDateFormat(
            "yyyy-MM-dd");

    public static final String SERVER_NAME = "www.getapk.cn";

    public static String getProjectRoot() {
        String root = System.getProperty("sharesdk-server.root");
        if (!root.endsWith(File.separator)) {
            root = root + File.separator;
        }
        return root;
    }

    public static final class SHARESDK {

        public static final String URL_PREFIX = "http://" + SERVER_NAME
                + "/sharesdk/";

        public static final String SOURCE_APK_URL_WITH_CDN = "http://dl.getapk.cn/file/apk/";
    }

    public static final class PATH {

        public static final String DATACRAWLER_SCRIPT_FOLDER = "/disk1/datacrawler/play/";
    }

    public static final class LOGIC {

        public static final int APPREC_COUNT = 100;

        public static final double APPREC_MIN_LEVEL = 50.0;

        public static final double APPREC_MAX_LEVEL = 95.0;

        public static final double APPREC_ORP_THRESHOD = 0.1;
    }

}
