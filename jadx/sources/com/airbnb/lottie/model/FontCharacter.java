package com.airbnb.lottie.model;

import com.airbnb.lottie.model.content.ShapeGroup;
import defpackage.fc;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class FontCharacter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f22075a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final char f22076b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final double f22077c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f22078e;

    public FontCharacter(List<ShapeGroup> list, char c2, double d, double d2, String str, String str2) {
        this.f22075a = list;
        this.f22076b = c2;
        this.f22077c = d2;
        this.d = str;
        this.f22078e = str2;
    }

    public static int a(char c2, String str, String str2) {
        return str2.hashCode() + fc.b(c2 * 31, 31, str);
    }

    public final int hashCode() {
        return a(this.f22076b, this.f22078e, this.d);
    }
}
