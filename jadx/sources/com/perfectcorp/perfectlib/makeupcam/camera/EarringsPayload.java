package com.perfectcorp.perfectlib.makeupcam.camera;

import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import defpackage.md;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class EarringsPayload implements PayloadValidator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f40604a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImmutableList f40605b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImmutableList f40606c;

    public static final class Pattern {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f40607a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f40608b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f40609c;

        public Pattern(String str, String str2, String str3, int i2) {
            this.f40607a = str;
            this.f40608b = str2;
            this.f40609c = str3;
        }
    }

    public EarringsPayload(String str, List<Pattern> list, List<Pattern> list2) {
        this.f40604a = str;
        this.f40605b = ImmutableList.u(list);
        this.f40606c = ImmutableList.u(list2);
    }

    @Override // com.perfectcorp.perfectlib.makeupcam.camera.PayloadValidator
    public final void a() {
        if (this.f40605b.isEmpty() && this.f40606c.isEmpty()) {
            md.n("no pattern can be used");
        }
    }
}
