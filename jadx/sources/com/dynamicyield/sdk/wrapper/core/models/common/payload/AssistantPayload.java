package com.dynamicyield.sdk.wrapper.core.models.common.payload;

import com.dynamicyield.sdk.wrapper.core.models.assistant.payload.AssistantOptions;
import com.dynamicyield.sdk.wrapper.core.models.assistant.payload.AssistantQuery;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u0000 \u00152\u00020\u0001:\u0002\u0016\u0015B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u000e\u0010\u000fBW\b\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u000e\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/AssistantPayload;", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EndpointPayload;", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;", "session", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;", "user", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SingleNameSelector;", "selector", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;", MvelScriptManager.VAR_CONTEXT, "Lcom/dynamicyield/sdk/wrapper/core/models/assistant/payload/AssistantQuery;", "query", "Lcom/dynamicyield/sdk/wrapper/core/models/assistant/payload/AssistantOptions;", "options", "<init>", "(Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SingleNameSelector;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;Lcom/dynamicyield/sdk/wrapper/core/models/assistant/payload/AssistantQuery;Lcom/dynamicyield/sdk/wrapper/core/models/assistant/payload/AssistantOptions;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SingleNameSelector;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;Lcom/dynamicyield/sdk/wrapper/core/models/assistant/payload/AssistantQuery;Lcom/dynamicyield/sdk/wrapper/core/models/assistant/payload/AssistantOptions;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final class AssistantPayload implements EndpointPayload {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Session f26194a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final User f26195b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SingleNameSelector f26196c;
    public final Context d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AssistantQuery f26197e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AssistantOptions f26198f;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/AssistantPayload$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/AssistantPayload;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<AssistantPayload> serializer() {
            return AssistantPayload$$serializer.f26199a;
        }
    }

    public /* synthetic */ AssistantPayload(int i2, Session session, User user, SingleNameSelector singleNameSelector, Context context, AssistantQuery assistantQuery, AssistantOptions assistantOptions, SerializationConstructorMarker serializationConstructorMarker) {
        if (23 != (i2 & 23)) {
            PluginExceptionsKt.b(i2, 23, AssistantPayload$$serializer.f26199a.getF19838b());
            throw null;
        }
        this.f26194a = session;
        this.f26195b = user;
        this.f26196c = singleNameSelector;
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = context;
        }
        this.f26197e = assistantQuery;
        if ((i2 & 32) == 0) {
            this.f26198f = null;
        } else {
            this.f26198f = assistantOptions;
        }
    }

    public AssistantPayload(Session session, User user, SingleNameSelector singleNameSelector, Context context, AssistantQuery assistantQuery, AssistantOptions assistantOptions) {
        session.getClass();
        user.getClass();
        singleNameSelector.getClass();
        assistantQuery.getClass();
        this.f26194a = session;
        this.f26195b = user;
        this.f26196c = singleNameSelector;
        this.d = context;
        this.f26197e = assistantQuery;
        this.f26198f = assistantOptions;
    }

    public /* synthetic */ AssistantPayload(Session session, User user, SingleNameSelector singleNameSelector, Context context, AssistantQuery assistantQuery, AssistantOptions assistantOptions, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(session, user, singleNameSelector, (i2 & 8) != 0 ? null : context, assistantQuery, (i2 & 32) != 0 ? null : assistantOptions);
    }
}
