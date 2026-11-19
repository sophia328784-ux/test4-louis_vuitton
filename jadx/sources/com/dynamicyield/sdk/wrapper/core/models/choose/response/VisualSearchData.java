package com.dynamicyield.sdk.wrapper.core.models.choose.response;

import com.dynamicyield.sdk.wrapper.core.models.search.response.Facet;
import defpackage.b51;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \u00112\u00020\u0001:\u0002\u0012\u0011BC\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\fBO\b\u0010\u0012\u0006\u0010\r\u001a\u00020\u0005\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u000b\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchData;", "", "", "Lcom/dynamicyield/sdk/wrapper/core/models/search/response/Facet;", "facets", "", "totalNumResults", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsSlot;", "slots", "", com.appsflyer.sdk_base.referrer.Payload.CUSTOM, "<init>", "(Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final class VisualSearchData {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Lazy[] f26164e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f26165a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Integer f26166b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f26167c;
    public final String d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchData$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchData;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<VisualSearchData> serializer() {
            return VisualSearchData$$serializer.f26168a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        f26164e = new Lazy[]{LazyKt.a(lazyThreadSafetyMode, new b51(18)), null, LazyKt.a(lazyThreadSafetyMode, new b51(19)), null};
    }

    public /* synthetic */ VisualSearchData(int i2, List list, Integer num, List list2, String str, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f26165a = null;
        } else {
            this.f26165a = list;
        }
        if ((i2 & 2) == 0) {
            this.f26166b = null;
        } else {
            this.f26166b = num;
        }
        if ((i2 & 4) == 0) {
            this.f26167c = null;
        } else {
            this.f26167c = list2;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str;
        }
    }

    public VisualSearchData() {
        this((List) null, (Integer) null, (List) null, (String) null, 15, (DefaultConstructorMarker) null);
    }

    public VisualSearchData(List<? extends Facet> list, Integer num, List<RecsSlot> list2, String str) {
        this.f26165a = list;
        this.f26166b = num;
        this.f26167c = list2;
        this.d = str;
    }

    public /* synthetic */ VisualSearchData(List list, Integer num, List list2, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : list, (i2 & 2) != 0 ? null : num, (i2 & 4) != 0 ? null : list2, (i2 & 8) != 0 ? null : str);
    }
}
