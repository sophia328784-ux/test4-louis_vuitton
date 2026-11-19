package com.dynamicyield.sdk.wrapper.core.models.common.payload;

import com.dynamicyield.sdk.wrapper.core.models.search.payload.Query;
import com.dynamicyield.sdk.wrapper.core.models.search.payload.SearchOptions;
import com.dynamicyield.sdk.wrapper.core.models.search.payload.SearchSelector;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u0000 \u00152\u00020\u0001:\u0002\u0016\u0015BC\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u000e\u0010\u000fBW\b\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u000e\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload;", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EndpointPayload;", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;", "session", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;", "user", "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SearchSelector;", "selector", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;", MvelScriptManager.VAR_CONTEXT, "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query;", "query", "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SearchOptions;", "options", "<init>", "(Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SearchSelector;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query;Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SearchOptions;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SearchSelector;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query;Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SearchOptions;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final class SearchPayload implements EndpointPayload {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Session f26238a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final User f26239b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SearchSelector f26240c;
    public final Context d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Query f26241e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SearchOptions f26242f;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<SearchPayload> serializer() {
            return SearchPayload$$serializer.f26243a;
        }
    }

    public /* synthetic */ SearchPayload(int i2, Session session, User user, SearchSelector searchSelector, Context context, Query query, SearchOptions searchOptions, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, SearchPayload$$serializer.f26243a.getF19838b());
            throw null;
        }
        this.f26238a = session;
        this.f26239b = user;
        this.f26240c = searchSelector;
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = context;
        }
        if ((i2 & 16) == 0) {
            this.f26241e = null;
        } else {
            this.f26241e = query;
        }
        if ((i2 & 32) == 0) {
            this.f26242f = null;
        } else {
            this.f26242f = searchOptions;
        }
    }

    public SearchPayload(Session session, User user, SearchSelector searchSelector, Context context, Query query, SearchOptions searchOptions) {
        session.getClass();
        user.getClass();
        searchSelector.getClass();
        this.f26238a = session;
        this.f26239b = user;
        this.f26240c = searchSelector;
        this.d = context;
        this.f26241e = query;
        this.f26242f = searchOptions;
    }

    public /* synthetic */ SearchPayload(Session session, User user, SearchSelector searchSelector, Context context, Query query, SearchOptions searchOptions, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(session, user, searchSelector, (i2 & 8) != 0 ? null : context, (i2 & 16) != 0 ? null : query, (i2 & 32) != 0 ? null : searchOptions);
    }
}
