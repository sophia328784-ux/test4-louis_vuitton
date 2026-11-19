package com.dynamicyield.sdk.wrapper.core.models.common.payload;

import com.appsflyer.sdk_base.referrer.Payload;
import com.dynamicyield.sdk.wrapper.core.enums.PageType;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.ii0;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \u00152\u00020\u0001:\u0002\u0015\u0016BA\b\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\n\u0010\u000bBS\b\u0010\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0006\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\n\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;", "", "Lcom/dynamicyield/sdk/wrapper/core/enums/PageType;", "pageType", "", "pageLocation", "", "pageData", "pageReferrer", "locale", "<init>", "(Lcom/dynamicyield/sdk/wrapper/core/enums/PageType;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "type", "location", DbParams.KEY_DATA, Payload.RFR, "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/dynamicyield/sdk/wrapper/core/enums/PageType;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final class Page {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Lazy[] f26228f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PageType f26229a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f26230b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f26231c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f26232e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static Page a(Companion companion, String str) {
            companion.getClass();
            return new Page(PageType.OTHER, str, (List) null, (String) null, (String) null, 4, (DefaultConstructorMarker) null);
        }

        public final KSerializer<Page> serializer() {
            return Page$$serializer.f26233a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        f26228f = new Lazy[]{LazyKt.a(lazyThreadSafetyMode, new ii0(26)), null, LazyKt.a(lazyThreadSafetyMode, new ii0(27)), null, null};
    }

    public /* synthetic */ Page(int i2, PageType pageType, String str, List list, String str2, String str3, SerializationConstructorMarker serializationConstructorMarker) {
        if (15 != (i2 & 15)) {
            PluginExceptionsKt.b(i2, 15, Page$$serializer.f26233a.getF19838b());
            throw null;
        }
        this.f26229a = pageType;
        this.f26230b = str;
        this.f26231c = list;
        this.d = str2;
        if ((i2 & 16) == 0) {
            this.f26232e = null;
        } else {
            this.f26232e = str3;
        }
    }

    public Page(PageType pageType, String str, List<String> list, String str2, String str3) {
        pageType.getClass();
        str.getClass();
        list.getClass();
        this.f26229a = pageType;
        this.f26230b = str;
        this.f26231c = list;
        this.d = str2;
        this.f26232e = str3;
    }

    public Page(PageType pageType, String str, List list, String str2, String str3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(pageType, str, (i2 & 4) != 0 ? EmptyList.f71768b : list, (i2 & 8) != 0 ? "" : str2, (i2 & 16) != 0 ? null : str3);
    }
}
