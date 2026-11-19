package com.sightcall.session.datasource.reference.v3;

import com.appsflyer.sdk_base.referrer.Payload;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\b\tB\u0011\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0082\u0001\u0002\n\u000b¨\u0006\f"}, d2 = {"Lcom/sightcall/session/datasource/reference/v3/SoftwareType;", "", "value", "", "<init>", "(Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "FullApp", "InstantApp", "Lcom/sightcall/session/datasource/reference/v3/SoftwareType$FullApp;", "Lcom/sightcall/session/datasource/reference/v3/SoftwareType$InstantApp;", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class SoftwareType {
    private final String value;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/session/datasource/reference/v3/SoftwareType$FullApp;", "Lcom/sightcall/session/datasource/reference/v3/SoftwareType;", "<init>", "()V", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class FullApp extends SoftwareType {
        public static final FullApp INSTANCE = new FullApp();

        private FullApp() {
            super(Payload.TYPE_APP, null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/session/datasource/reference/v3/SoftwareType$InstantApp;", "Lcom/sightcall/session/datasource/reference/v3/SoftwareType;", "<init>", "()V", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class InstantApp extends SoftwareType {
        public static final InstantApp INSTANCE = new InstantApp();

        private InstantApp() {
            super("noapp", null);
        }
    }

    private SoftwareType(String str) {
        this.value = str;
    }

    public final String getValue() {
        return this.value;
    }

    public /* synthetic */ SoftwareType(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }
}
