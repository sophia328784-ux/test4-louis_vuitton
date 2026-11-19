package com.vuitton.android.presentation.screen.authentication;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/AuthenticationSideEffect;", "", "Event", "Lcom/vuitton/android/presentation/screen/authentication/AuthenticationSideEffect$Event;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class AuthenticationSideEffect {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/AuthenticationSideEffect$Event;", "Lcom/vuitton/android/presentation/screen/authentication/AuthenticationSideEffect;", "LogoutSuccess", "Lcom/vuitton/android/presentation/screen/authentication/AuthenticationSideEffect$Event$LogoutSuccess;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class Event extends AuthenticationSideEffect {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/AuthenticationSideEffect$Event$LogoutSuccess;", "Lcom/vuitton/android/presentation/screen/authentication/AuthenticationSideEffect$Event;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LogoutSuccess extends Event {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final LogoutSuccess f53275a = new LogoutSuccess(null);

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof LogoutSuccess);
            }

            public final int hashCode() {
                return 588592814;
            }

            public final String toString() {
                return "LogoutSuccess";
            }
        }

        public Event(DefaultConstructorMarker defaultConstructorMarker) {
            super(null);
        }
    }

    public AuthenticationSideEffect(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
