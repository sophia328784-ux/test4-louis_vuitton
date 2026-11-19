package com.dynamicyield.sdk.wrapper.core.models.choose.response;

import com.dynamicyield.sdk.wrapper.core.models.search.response.Facet;
import defpackage.zu0;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \u00142\u00020\u0001:\u0002\u0015\u0014Bg\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0002\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u000e\u0010\u000fBm\b\u0010\u0012\u0006\u0010\u0010\u001a\u00020\u0005\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u000e\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchData;", "", "", "Lcom/dynamicyield/sdk/wrapper/core/models/search/response/Facet;", "facets", "", "totalNumResults", "", "searchQuery", "normalizedQuery", "spellCheckedQuery", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsSlot;", "slots", com.appsflyer.sdk_base.referrer.Payload.CUSTOM, "<init>", "(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final class SemanticSearchData {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Lazy[] f26123h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f26124a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Integer f26125b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f26126c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f26127e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f26128f;
    public final String g;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchData$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchData;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<SemanticSearchData> serializer() {
            return SemanticSearchData$$serializer.f26129a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        f26123h = new Lazy[]{LazyKt.a(lazyThreadSafetyMode, new zu0(1)), null, null, null, null, LazyKt.a(lazyThreadSafetyMode, new zu0(2)), null};
    }

    public /* synthetic */ SemanticSearchData(int i2, List list, Integer num, String str, String str2, String str3, List list2, String str4, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f26124a = null;
        } else {
            this.f26124a = list;
        }
        if ((i2 & 2) == 0) {
            this.f26125b = null;
        } else {
            this.f26125b = num;
        }
        if ((i2 & 4) == 0) {
            this.f26126c = null;
        } else {
            this.f26126c = str;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str2;
        }
        if ((i2 & 16) == 0) {
            this.f26127e = null;
        } else {
            this.f26127e = str3;
        }
        if ((i2 & 32) == 0) {
            this.f26128f = null;
        } else {
            this.f26128f = list2;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = str4;
        }
    }

    public SemanticSearchData() {
        this((List) null, (Integer) null, (String) null, (String) null, (String) null, (List) null, (String) null, CertificateBody.profileType, (DefaultConstructorMarker) null);
    }

    public SemanticSearchData(List<? extends Facet> list, Integer num, String str, String str2, String str3, List<RecsSlot> list2, String str4) {
        this.f26124a = list;
        this.f26125b = num;
        this.f26126c = str;
        this.d = str2;
        this.f26127e = str3;
        this.f26128f = list2;
        this.g = str4;
    }

    public /* synthetic */ SemanticSearchData(List list, Integer num, String str, String str2, String str3, List list2, String str4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : list, (i2 & 2) != 0 ? null : num, (i2 & 4) != 0 ? null : str, (i2 & 8) != 0 ? null : str2, (i2 & 16) != 0 ? null : str3, (i2 & 32) != 0 ? null : list2, (i2 & 64) != 0 ? null : str4);
    }
}
