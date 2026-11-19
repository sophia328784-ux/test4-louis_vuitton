package org.aspectj.runtime.reflect;

import com.sightcall.universal.media.offline.FileUtils;
import java.lang.reflect.Modifier;
import org.aspectj.lang.reflect.MethodSignature;

/* JADX INFO: loaded from: classes3.dex */
class MethodSignatureImpl extends CodeSignatureImpl implements MethodSignature {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Class f77569k;

    @Override // org.aspectj.runtime.reflect.SignatureImpl
    public final String a() {
        StringMaker stringMaker = StringMaker.f77579e;
        StringBuffer stringBuffer = new StringBuffer();
        if (this.f77571a == -1) {
            this.f77571a = Integer.parseInt(b(0), 16);
        }
        int i2 = this.f77571a;
        String strConcat = "";
        if (stringMaker.f77582c) {
            String string = Modifier.toString(i2);
            if (string.length() != 0) {
                strConcat = string.concat(" ");
            }
        }
        stringBuffer.append(strConcat);
        if (stringMaker.f77581b) {
            if (this.f77569k == null) {
                String strB = b(6);
                if (this.g == null) {
                    this.g = getClass().getClassLoader();
                }
                this.f77569k = Factory.a(this.g, strB);
            }
            Class cls = this.f77569k;
            stringBuffer.append(StringMaker.a(cls, cls.getName(), stringMaker.f77580a));
        }
        if (stringMaker.f77581b) {
            stringBuffer.append(" ");
        }
        if (this.d == null) {
            String strB2 = b(2);
            if (this.g == null) {
                this.g = getClass().getClassLoader();
            }
            this.d = Factory.a(this.g, strB2);
        }
        Class cls2 = this.d;
        if (this.f77573c == null) {
            if (cls2 == null) {
                String strB3 = b(2);
                if (this.g == null) {
                    this.g = getClass().getClassLoader();
                }
                this.d = Factory.a(this.g, strB3);
            }
            this.f77573c = this.d.getName();
        }
        stringBuffer.append(StringMaker.a(cls2, this.f77573c, stringMaker.d));
        stringBuffer.append(FileUtils.HIDDEN_PREFIX);
        if (this.f77572b == null) {
            this.f77572b = b(1);
        }
        stringBuffer.append(this.f77572b);
        if (this.f77556i == null) {
            this.f77556i = c(3);
        }
        Class[] clsArr = this.f77556i;
        if (clsArr != null) {
            if (stringMaker.f77581b) {
                stringBuffer.append("(");
                for (int i3 = 0; i3 < clsArr.length; i3++) {
                    if (i3 > 0) {
                        stringBuffer.append(", ");
                    }
                    Class cls3 = clsArr[i3];
                    stringBuffer.append(StringMaker.a(cls3, cls3.getName(), stringMaker.f77580a));
                }
                stringBuffer.append(")");
            } else if (clsArr.length == 0) {
                stringBuffer.append("()");
            } else {
                stringBuffer.append("(..)");
            }
        }
        if (this.f77557j == null) {
            this.f77557j = c(5);
        }
        return stringBuffer.toString();
    }
}
