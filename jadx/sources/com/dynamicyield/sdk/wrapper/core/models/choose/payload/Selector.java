package com.dynamicyield.sdk.wrapper.core.models.choose.payload;

import defpackage.it0;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB7\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tBE\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Selector;", "", "", "", "names", "groups", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Preview;", "preview", "<init>", "(Ljava/util/List;Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Preview;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Preview;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final /* data */ class Selector {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f26037a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f26038b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Preview f26039c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Selector$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Selector;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<Selector> serializer() {
            return Selector$$serializer.f26040a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        d = new Lazy[]{LazyKt.a(lazyThreadSafetyMode, new it0(28)), LazyKt.a(lazyThreadSafetyMode, new it0(29)), null};
    }

    public /* synthetic */ Selector(int i2, List list, List list2, Preview preview, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f26037a = null;
        } else {
            this.f26037a = list;
        }
        if ((i2 & 2) == 0) {
            this.f26038b = null;
        } else {
            this.f26038b = list2;
        }
        if ((i2 & 4) == 0) {
            this.f26039c = null;
        } else {
            this.f26039c = preview;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Selector)) {
            return false;
        }
        Selector selector = (Selector) obj;
        return Intrinsics.c(this.f26037a, selector.f26037a) && Intrinsics.c(this.f26038b, selector.f26038b) && Intrinsics.c(this.f26039c, selector.f26039c);
    }

    public final int hashCode() {
        List list = this.f26037a;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        List list2 = this.f26038b;
        int iHashCode2 = (iHashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        Preview preview = this.f26039c;
        return iHashCode2 + (preview != null ? preview.hashCode() : 0);
    }

    public final String toString() {
        return "Selector(names=" + this.f26037a + ", groups=" + this.f26038b + ", preview=" + this.f26039c + ')';
    }

    public Selector() {
        this((List) null, (List) null, (Preview) null, 7, (DefaultConstructorMarker) null);
    }

    public Selector(List<String> list, List<String> list2, Preview preview) {
        this.f26037a = list;
        this.f26038b = list2;
        this.f26039c = preview;
    }

    public /* synthetic */ Selector(List list, List list2, Preview preview, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : list, (i2 & 2) != 0 ? null : list2, (i2 & 4) != 0 ? null : preview);
    }
}
