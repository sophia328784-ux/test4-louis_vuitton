package com.vuitton.android.presentation.screen.options;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/OptionsSideEffect;", "", "Navigation", "Lcom/vuitton/android/presentation/screen/options/OptionsSideEffect$Navigation;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class OptionsSideEffect {

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/OptionsSideEffect$Navigation;", "Lcom/vuitton/android/presentation/screen/options/OptionsSideEffect;", "ToContact", "ToConsumerRights", "LogoutSuccess", "Lcom/vuitton/android/presentation/screen/options/OptionsSideEffect$Navigation$LogoutSuccess;", "Lcom/vuitton/android/presentation/screen/options/OptionsSideEffect$Navigation$ToConsumerRights;", "Lcom/vuitton/android/presentation/screen/options/OptionsSideEffect$Navigation$ToContact;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class Navigation extends OptionsSideEffect {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/OptionsSideEffect$Navigation$LogoutSuccess;", "Lcom/vuitton/android/presentation/screen/options/OptionsSideEffect$Navigation;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LogoutSuccess extends Navigation {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final LogoutSuccess f59638a = new LogoutSuccess(null);

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof LogoutSuccess);
            }

            public final int hashCode() {
                return 1313362454;
            }

            public final String toString() {
                return "LogoutSuccess";
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/OptionsSideEffect$Navigation$ToConsumerRights;", "Lcom/vuitton/android/presentation/screen/options/OptionsSideEffect$Navigation;", "", "consumerRightsUrl", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class ToConsumerRights extends Navigation {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f59639a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public ToConsumerRights(String str) {
                super(null);
                str.getClass();
                this.f59639a = str;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof ToConsumerRights) && Intrinsics.c(this.f59639a, ((ToConsumerRights) obj).f59639a);
            }

            public final int hashCode() {
                return this.f59639a.hashCode();
            }

            public final String toString() {
                return fc.h("ToConsumerRights(consumerRightsUrl=", this.f59639a, ")");
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/OptionsSideEffect$Navigation$ToContact;", "Lcom/vuitton/android/presentation/screen/options/OptionsSideEffect$Navigation;", "", "contactFormUrl", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class ToContact extends Navigation {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f59640a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public ToContact(String str) {
                super(null);
                str.getClass();
                this.f59640a = str;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof ToContact) && Intrinsics.c(this.f59640a, ((ToContact) obj).f59640a);
            }

            public final int hashCode() {
                return this.f59640a.hashCode();
            }

            public final String toString() {
                return fc.h("ToContact(contactFormUrl=", this.f59640a, ")");
            }
        }

        public Navigation(DefaultConstructorMarker defaultConstructorMarker) {
            super(null);
        }
    }

    public OptionsSideEffect(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
