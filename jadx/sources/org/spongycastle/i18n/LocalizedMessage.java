package org.spongycastle.i18n;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.d21;
import defpackage.fc;
import defpackage.tr;
import defpackage.x1;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.text.DateFormat;
import java.text.Format;
import java.text.MessageFormat;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import java.util.TimeZone;
import org.spongycastle.i18n.filter.TrustedInput;
import org.spongycastle.i18n.filter.UntrustedInput;
import org.spongycastle.i18n.filter.UntrustedUrlInput;

/* JADX INFO: loaded from: classes5.dex */
public class LocalizedMessage {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f77886a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f77887b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f77888c;
    public final FilteredArguments d;

    public LocalizedMessage(String str, String str2, String str3, Object[] objArr) throws UnsupportedEncodingException, NullPointerException {
        this.f77888c = "ISO-8859-1";
        if (str == null || str2 == null || objArr == null) {
            throw null;
        }
        this.f77886a = str2;
        this.f77887b = str;
        this.d = new FilteredArguments(objArr);
        if (!Charset.isSupported(str3)) {
            throw new UnsupportedEncodingException(fc.h("The encoding \"", str3, "\" is not supported."));
        }
        this.f77888c = str3;
    }

    public static String a(String str, Object[] objArr, Locale locale, TimeZone timeZone) {
        MessageFormat messageFormat = new MessageFormat(" ");
        messageFormat.setLocale(locale);
        messageFormat.applyPattern(str);
        if (!timeZone.equals(TimeZone.getDefault())) {
            Format[] formats = messageFormat.getFormats();
            for (int i2 = 0; i2 < formats.length; i2++) {
                Format format = formats[i2];
                if (format instanceof DateFormat) {
                    DateFormat dateFormat = (DateFormat) format;
                    dateFormat.setTimeZone(timeZone);
                    messageFormat.setFormat(i2, dateFormat);
                }
            }
        }
        return messageFormat.format(objArr);
    }

    public final String b(String str, Locale locale, TimeZone timeZone) {
        String str2 = this.f77888c;
        String str3 = this.f77887b;
        String strH = this.f77886a;
        if (str != null) {
            strH = tr.h(strH, FileUtils.HIDDEN_PREFIX, str);
        }
        String str4 = strH;
        try {
            String string = ResourceBundle.getBundle(str3, locale).getString(str4);
            if (!str2.equals("ISO-8859-1")) {
                string = new String(string.getBytes("ISO-8859-1"), str2);
            }
            FilteredArguments filteredArguments = this.d;
            return filteredArguments.d.length == 0 ? string : a(string, filteredArguments.a(locale), locale, timeZone);
        } catch (UnsupportedEncodingException e2) {
            x1.m(e2);
            return null;
        } catch (MissingResourceException unused) {
            throw new MissingEntryException(d21.l("Can't find entry ", str4, " in resource file ", str3, FileUtils.HIDDEN_PREFIX), str3, str4, locale, null);
        }
    }

    public final String toString() {
        StringBuffer stringBuffer = new StringBuffer("Resource: \"");
        stringBuffer.append(this.f77887b);
        stringBuffer.append("\" Id: \"");
        stringBuffer.append(this.f77886a);
        stringBuffer.append("\" Arguments: ");
        stringBuffer.append(this.d.f77891c.length);
        stringBuffer.append(" normal");
        stringBuffer.append(" Encoding: ");
        stringBuffer.append(this.f77888c);
        stringBuffer.append(" ClassLoader: null");
        return stringBuffer.toString();
    }

    public LocalizedMessage(String str, String str2, String str3) throws UnsupportedEncodingException, NullPointerException {
        this.f77888c = "ISO-8859-1";
        if (str != null && str2 != null) {
            this.f77886a = str2;
            this.f77887b = str;
            this.d = new FilteredArguments();
            if (Charset.isSupported(str3)) {
                this.f77888c = str3;
                return;
            }
            throw new UnsupportedEncodingException(fc.h("The encoding \"", str3, "\" is not supported."));
        }
        throw null;
    }

    public LocalizedMessage(String str, String str2, Object[] objArr) throws NullPointerException {
        this.f77888c = "ISO-8859-1";
        if (str != null && str2 != null && objArr != null) {
            this.f77886a = str2;
            this.f77887b = str;
            this.d = new FilteredArguments(objArr);
            return;
        }
        throw null;
    }

    public LocalizedMessage(String str, String str2) throws NullPointerException {
        this.f77888c = "ISO-8859-1";
        if (str != null && str2 != null) {
            this.f77886a = str2;
            this.f77887b = str;
            this.d = new FilteredArguments();
            return;
        }
        throw null;
    }

    public class FilteredArguments {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean[] f77889a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int[] f77890b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Object[] f77891c;
        public final Object[] d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Object[] f77892e;

        public FilteredArguments(Object[] objArr) {
            this.f77891c = objArr;
            this.d = new Object[objArr.length];
            this.f77892e = new Object[objArr.length];
            this.f77889a = new boolean[objArr.length];
            this.f77890b = new int[objArr.length];
            for (int i2 = 0; i2 < objArr.length; i2++) {
                Object obj = objArr[i2];
                boolean z = obj instanceof TrustedInput;
                Object[] objArr2 = this.d;
                if (z) {
                    objArr2[i2] = ((TrustedInput) obj).f77893a;
                    this.f77890b[i2] = 0;
                } else if (obj instanceof UntrustedInput) {
                    objArr2[i2] = ((UntrustedInput) obj).f77894a;
                    boolean z2 = objArr[i2] instanceof UntrustedUrlInput;
                    int[] iArr = this.f77890b;
                    if (z2) {
                        iArr[i2] = 2;
                    } else {
                        iArr[i2] = 1;
                    }
                } else {
                    objArr2[i2] = obj;
                    this.f77890b[i2] = 1;
                }
                this.f77889a[i2] = this.d[i2] instanceof LocaleString;
            }
        }

        public final Object[] a(Locale locale) {
            Object[] objArr = this.d;
            Object[] objArr2 = new Object[objArr.length];
            for (int i2 = 0; i2 < objArr.length; i2++) {
                Object[] objArr3 = this.f77892e;
                Object objB = objArr3[i2];
                if (objB == null) {
                    objB = objArr[i2];
                    boolean z = this.f77889a[i2];
                    int[] iArr = this.f77890b;
                    if (z) {
                        objB = ((LocaleString) objB).b(null, locale, null);
                        int i3 = iArr[i2];
                    } else {
                        int i4 = iArr[i2];
                        objArr3[i2] = objB;
                    }
                }
                objArr2[i2] = objB;
            }
            return objArr2;
        }

        public FilteredArguments() {
            this(new Object[0]);
        }
    }
}
