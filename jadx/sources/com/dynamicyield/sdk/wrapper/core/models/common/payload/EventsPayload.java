package com.dynamicyield.sdk.wrapper.core.models.common.payload;

import com.dynamicyield.sdk.wrapper.core.models.event.DYEvent;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.ew;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\u000b\u0010\fBI\b\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u000b\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EventsPayload;", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EndpointPayload;", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;", "session", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;", "user", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;", MvelScriptManager.VAR_CONTEXT, "", "Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent;", DbParams.TABLE_EVENTS, "<init>", "(Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final class EventsPayload implements EndpointPayload {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Lazy[] f26223e = {null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new ew(11))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Session f26224a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final User f26225b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f26226c;
    public final List d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EventsPayload$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EventsPayload;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<EventsPayload> serializer() {
            return EventsPayload$$serializer.f26227a;
        }
    }

    public /* synthetic */ EventsPayload(int i2, Session session, User user, Context context, List list, SerializationConstructorMarker serializationConstructorMarker) {
        if (11 != (i2 & 11)) {
            PluginExceptionsKt.b(i2, 11, EventsPayload$$serializer.f26227a.getF19838b());
            throw null;
        }
        this.f26224a = session;
        this.f26225b = user;
        if ((i2 & 4) == 0) {
            this.f26226c = null;
        } else {
            this.f26226c = context;
        }
        this.d = list;
    }

    public EventsPayload(Session session, User user, Context context, List<? extends DYEvent> list) {
        session.getClass();
        user.getClass();
        list.getClass();
        this.f26224a = session;
        this.f26225b = user;
        this.f26226c = context;
        this.d = list;
    }

    public /* synthetic */ EventsPayload(Session session, User user, Context context, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(session, user, (i2 & 4) != 0 ? null : context, list);
    }
}
