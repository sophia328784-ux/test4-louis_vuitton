package com.coremedia.iso;

import com.coremedia.iso.boxes.Box;
import defpackage.v7;
import defpackage.x1;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.util.Enumeration;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class PropertyBoxParserImpl extends AbstractBoxParser {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String[] f25315h = new String[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Properties f25316c;
    public final Pattern d = Pattern.compile("(.*)\\((.*?)\\)");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final StringBuilder f25317e = new StringBuilder();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f25318f;
    public String[] g;

    public PropertyBoxParserImpl(String... strArr) {
        InputStream resourceAsStream = getClass().getResourceAsStream("/isoparser-default.properties");
        try {
            Properties properties = new Properties();
            this.f25316c = properties;
            try {
                properties.load(resourceAsStream);
                ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
                Enumeration<URL> resources = (contextClassLoader == null ? ClassLoader.getSystemClassLoader() : contextClassLoader).getResources("isoparser-custom.properties");
                while (resources.hasMoreElements()) {
                    InputStream inputStreamOpenStream = resources.nextElement().openStream();
                    try {
                        this.f25316c.load(inputStreamOpenStream);
                        inputStreamOpenStream.close();
                    } catch (Throwable th) {
                        inputStreamOpenStream.close();
                        throw th;
                    }
                }
                for (String str : strArr) {
                    this.f25316c.load(getClass().getResourceAsStream(str));
                }
                try {
                    resourceAsStream.close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            } catch (IOException e3) {
                throw new RuntimeException(e3);
            }
        } catch (Throwable th2) {
            try {
                resourceAsStream.close();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
            throw th2;
        }
    }

    @Override // com.coremedia.iso.AbstractBoxParser
    public final Box b(String str, String str2, byte[] bArr) {
        String property;
        int i2 = 0;
        Properties properties = this.f25316c;
        if (bArr == null) {
            property = properties.getProperty(str);
            if (property == null) {
                StringBuilder sb = this.f25317e;
                sb.append(str2);
                sb.append('-');
                sb.append(str);
                String string = sb.toString();
                sb.setLength(0);
                property = properties.getProperty(string);
            }
        } else {
            if (!"uuid".equals(str)) {
                v7.h("we have a userType but no uuid box type. Something's wrong");
                return null;
            }
            property = properties.getProperty("uuid[" + Hex.a(0, bArr).toUpperCase() + "]");
            if (property == null) {
                property = properties.getProperty(String.valueOf(str2) + "-uuid[" + Hex.a(0, bArr).toUpperCase() + "]");
            }
            if (property == null) {
                property = properties.getProperty("uuid");
            }
        }
        if (property == null) {
            property = properties.getProperty("default");
        }
        if (property == null) {
            v7.h("No box object found for ".concat(str));
            return null;
        }
        boolean zEndsWith = property.endsWith(")");
        String[] strArr = f25315h;
        if (zEndsWith) {
            Matcher matcher = this.d.matcher(property);
            if (!matcher.matches()) {
                v7.h("Cannot work with that constructor: ".concat(property));
                return null;
            }
            this.f25318f = matcher.group(1);
            if (matcher.group(2).length() == 0) {
                this.g = strArr;
            } else {
                this.g = matcher.group(2).length() > 0 ? matcher.group(2).split(",") : new String[0];
            }
        } else {
            this.g = strArr;
            this.f25318f = property;
        }
        try {
            Class<?> cls = Class.forName(this.f25318f);
            String[] strArr2 = this.g;
            if (strArr2.length <= 0) {
                return (Box) cls.newInstance();
            }
            Class<?>[] clsArr = new Class[strArr2.length];
            Object[] objArr = new Object[strArr2.length];
            while (true) {
                String[] strArr3 = this.g;
                if (i2 >= strArr3.length) {
                    return (Box) cls.getConstructor(clsArr).newInstance(objArr);
                }
                if ("userType".equals(strArr3[i2])) {
                    objArr[i2] = bArr;
                    clsArr[i2] = byte[].class;
                } else if ("type".equals(this.g[i2])) {
                    objArr[i2] = str;
                    clsArr[i2] = String.class;
                } else {
                    if (!"parent".equals(this.g[i2])) {
                        throw new InternalError("No such param: " + this.g[i2]);
                    }
                    objArr[i2] = str2;
                    clsArr[i2] = String.class;
                }
                i2++;
            }
        } catch (ClassNotFoundException e2) {
            x1.m(e2);
            return null;
        } catch (IllegalAccessException e3) {
            x1.m(e3);
            return null;
        } catch (InstantiationException e4) {
            x1.m(e4);
            return null;
        } catch (NoSuchMethodException e5) {
            x1.m(e5);
            return null;
        } catch (InvocationTargetException e6) {
            x1.m(e6);
            return null;
        }
    }

    public PropertyBoxParserImpl(Properties properties) {
        this.f25316c = properties;
    }
}
