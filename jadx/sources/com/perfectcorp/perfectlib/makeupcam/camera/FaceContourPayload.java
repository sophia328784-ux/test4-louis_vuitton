package com.perfectcorp.perfectlib.makeupcam.camera;

import com.perfectcorp.perfectlib.ymk.model.ItemSubType;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.Lists;
import defpackage.g7;
import defpackage.r81;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final class FaceContourPayload implements PayloadValidator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Setting f40632a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Setting f40633b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f40634c;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Setting f40635a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Setting f40636b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f40637c = 50;

        public final FaceContourPayload a() {
            return new FaceContourPayload(this.f40635a, this.f40636b, this.f40637c);
        }
    }

    public FaceContourPayload(Setting setting, Setting setting2, int i2) {
        this.f40632a = setting;
        this.f40633b = setting2;
        this.f40634c = i2;
    }

    @Override // com.perfectcorp.perfectlib.makeupcam.camera.PayloadValidator
    public final void a() {
        if (this.f40632a == null && this.f40633b == null) {
            r81.d("highlight and contour setting are null");
        }
    }

    public static class Setting {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final AtomicInteger f40638k = new AtomicInteger();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f40639a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f40640b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f40641c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f40642e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f40643f;
        public final ImmutableList g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final ItemSubType f40644h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f40645i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f40646j;

        public Setting(int i2, String str, String str2, String str3, String str4, String str5, List list, ItemSubType itemSubType, int i3, int i4) {
            this.f40640b = str;
            this.f40639a = i2;
            this.f40641c = str2;
            this.d = str3;
            this.f40642e = str4;
            this.f40643f = str5;
            this.g = ImmutableList.u(Lists.c(list, new g7(18)));
            this.f40644h = itemSubType;
            this.f40645i = i3;
            this.f40646j = i4;
        }

        public Setting(Setting setting) {
            this(setting.f40639a, setting.f40640b, setting.f40641c, setting.d, setting.f40642e, setting.f40643f, setting.g, setting.f40644h, setting.f40645i, setting.f40646j);
        }

        public Setting(String str, String str2, String str3, String str4, String str5, List<YMKPrimitiveData.MakeupColor> list, ItemSubType itemSubType, int i2, int i3) {
            this(-1, str, str2, str3, str4, str5, list, itemSubType, i2, i3);
        }
    }
}
