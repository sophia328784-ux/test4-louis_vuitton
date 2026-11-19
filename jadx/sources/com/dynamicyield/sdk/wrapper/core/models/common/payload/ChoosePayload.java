package com.dynamicyield.sdk.wrapper.core.models.common.payload;

import com.dynamicyield.sdk.wrapper.core.models.choose.payload.Options;
import com.dynamicyield.sdk.wrapper.core.models.choose.payload.Selector;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u0000 \u00132\u00020\u0001:\u0002\u0014\u0013B;\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\rBM\b\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\f\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/ChoosePayload;", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EndpointPayload;", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;", "session", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;", "user", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Selector;", "selector", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;", MvelScriptManager.VAR_CONTEXT, "Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Options;", "options", "<init>", "(Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Selector;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Options;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Selector;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Options;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final class ChoosePayload implements EndpointPayload {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Session f26200a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final User f26201b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Selector f26202c;
    public final Context d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Options f26203e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/ChoosePayload$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/ChoosePayload;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ChoosePayload> serializer() {
            return ChoosePayload$$serializer.f26204a;
        }
    }

    public /* synthetic */ ChoosePayload(int i2, Session session, User user, Selector selector, Context context, Options options, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, ChoosePayload$$serializer.f26204a.getF19838b());
            throw null;
        }
        this.f26200a = session;
        this.f26201b = user;
        if ((i2 & 4) == 0) {
            this.f26202c = null;
        } else {
            this.f26202c = selector;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = context;
        }
        if ((i2 & 16) == 0) {
            this.f26203e = null;
        } else {
            this.f26203e = options;
        }
    }

    public ChoosePayload(Session session, User user, Selector selector, Context context, Options options) {
        session.getClass();
        user.getClass();
        this.f26200a = session;
        this.f26201b = user;
        this.f26202c = selector;
        this.d = context;
        this.f26203e = options;
    }

    public /* synthetic */ ChoosePayload(Session session, User user, Selector selector, Context context, Options options, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(session, user, (i2 & 4) != 0 ? null : selector, (i2 & 8) != 0 ? null : context, (i2 & 16) != 0 ? null : options);
    }
}
