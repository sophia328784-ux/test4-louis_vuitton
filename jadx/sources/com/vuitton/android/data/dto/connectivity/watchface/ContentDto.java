package com.vuitton.android.data.dto.connectivity.watchface;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.lp;
import defpackage.tr;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00142\u00020\u0001:\u0002\u0015\u0014B\u008b\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u001c\b\u0002\u0010\u0006\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004j\n\u0012\u0004\u0012\u00020\u0002\u0018\u0001`\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u001c\b\u0002\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004j\n\u0012\u0004\u0012\u00020\u0002\u0018\u0001`\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\r\u0010\u000eBw\b\u0010\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\r\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/vuitton/android/data/dto/connectivity/watchface/ContentDto;", "", "", "assetVideoplaceholder", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "assetBottom", "assetHowToGet", "assetHowToGetSubtitles", "assetText", "assetTop", "assetVideo", "assetVideoSubtitles", "<init>", "(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ContentDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Lazy[] f45669i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45670a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f45671b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45672c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f45673e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f45674f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f45675h;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/connectivity/watchface/ContentDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/connectivity/watchface/ContentDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ContentDto> serializer() {
            return ContentDto$$serializer.f45676a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        f45669i = new Lazy[]{null, LazyKt.a(lazyThreadSafetyMode, new lp(25)), null, null, null, LazyKt.a(lazyThreadSafetyMode, new lp(26)), null, null};
    }

    public /* synthetic */ ContentDto(int i2, String str, ArrayList arrayList, String str2, String str3, String str4, ArrayList arrayList2, String str5, String str6, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f45670a = null;
        } else {
            this.f45670a = str;
        }
        if ((i2 & 2) == 0) {
            this.f45671b = null;
        } else {
            this.f45671b = arrayList;
        }
        if ((i2 & 4) == 0) {
            this.f45672c = null;
        } else {
            this.f45672c = str2;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str3;
        }
        if ((i2 & 16) == 0) {
            this.f45673e = null;
        } else {
            this.f45673e = str4;
        }
        if ((i2 & 32) == 0) {
            this.f45674f = null;
        } else {
            this.f45674f = arrayList2;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = str5;
        }
        if ((i2 & 128) == 0) {
            this.f45675h = null;
        } else {
            this.f45675h = str6;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ContentDto)) {
            return false;
        }
        ContentDto contentDto = (ContentDto) obj;
        return Intrinsics.c(this.f45670a, contentDto.f45670a) && Intrinsics.c(this.f45671b, contentDto.f45671b) && Intrinsics.c(this.f45672c, contentDto.f45672c) && Intrinsics.c(this.d, contentDto.d) && Intrinsics.c(this.f45673e, contentDto.f45673e) && Intrinsics.c(this.f45674f, contentDto.f45674f) && Intrinsics.c(this.g, contentDto.g) && Intrinsics.c(this.f45675h, contentDto.f45675h);
    }

    public final int hashCode() {
        String str = this.f45670a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        ArrayList arrayList = this.f45671b;
        int iHashCode2 = (iHashCode + (arrayList == null ? 0 : arrayList.hashCode())) * 31;
        String str2 = this.f45672c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.d;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f45673e;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        ArrayList arrayList2 = this.f45674f;
        int iHashCode6 = (iHashCode5 + (arrayList2 == null ? 0 : arrayList2.hashCode())) * 31;
        String str5 = this.g;
        int iHashCode7 = (iHashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f45675h;
        return iHashCode7 + (str6 != null ? str6.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ContentDto(assetVideoplaceholder=");
        sb.append(this.f45670a);
        sb.append(", assetBottom=");
        sb.append(this.f45671b);
        sb.append(", assetHowToGet=");
        cj.C(sb, this.f45672c, ", assetHowToGetSubtitles=", this.d, ", assetText=");
        sb.append(this.f45673e);
        sb.append(", assetTop=");
        sb.append(this.f45674f);
        sb.append(", assetVideo=");
        return tr.l(sb, this.g, ", assetVideoSubtitles=", this.f45675h, ")");
    }

    public ContentDto() {
        this((String) null, (ArrayList) null, (String) null, (String) null, (String) null, (ArrayList) null, (String) null, (String) null, 255, (DefaultConstructorMarker) null);
    }

    public ContentDto(String str, ArrayList<String> arrayList, String str2, String str3, String str4, ArrayList<String> arrayList2, String str5, String str6) {
        this.f45670a = str;
        this.f45671b = arrayList;
        this.f45672c = str2;
        this.d = str3;
        this.f45673e = str4;
        this.f45674f = arrayList2;
        this.g = str5;
        this.f45675h = str6;
    }

    public /* synthetic */ ContentDto(String str, ArrayList arrayList, String str2, String str3, String str4, ArrayList arrayList2, String str5, String str6, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : arrayList, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? null : str3, (i2 & 16) != 0 ? null : str4, (i2 & 32) != 0 ? null : arrayList2, (i2 & 64) != 0 ? null : str5, (i2 & 128) != 0 ? null : str6);
    }
}
