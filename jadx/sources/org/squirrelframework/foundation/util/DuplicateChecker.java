package org.squirrelframework.foundation.util;

import io.jsonwebtoken.JwtParser;
import java.net.URL;
import java.util.Enumeration;
import java.util.HashSet;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes5.dex */
public class DuplicateChecker {
    private static final Logger logger = LoggerFactory.getLogger(DuplicateChecker.class);

    private DuplicateChecker() {
    }

    public static void checkDuplicate(String str) {
        String file;
        try {
            Enumeration<URL> resources = Thread.currentThread().getContextClassLoader().getResources(str);
            HashSet hashSet = new HashSet();
            while (resources.hasMoreElements()) {
                URL urlNextElement = resources.nextElement();
                if (urlNextElement != null && (file = urlNextElement.getFile()) != null && file.length() > 0) {
                    hashSet.add(file);
                }
            }
            if (hashSet.size() > 1) {
                logger.error("Duplicate class " + str + " in " + hashSet.size() + " jar " + hashSet);
            }
        } catch (Throwable th) {
            logger.error(th.getMessage(), th);
        }
    }

    public static void checkDuplicate(Class<?> cls) {
        checkDuplicate(cls.getName().replace(JwtParser.SEPARATOR_CHAR, '/') + ".class");
    }
}
