package com.vuitton.android.presentation.screen.privacy.models;

import defpackage.v40;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0006\u0002\u0003\u0004\u0005\u0006\u0007\u0082\u0001\u0006\b\t\n\u000b\f\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;", "", "FunctionalConsentUiModel", "AnalyticsConsentUiModel", "CustomisationConsentUiModel", "SocialConsentUiModel", "ChatConsentUiModel", "LucieLabsConsentUiModel", "Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$AnalyticsConsentUiModel;", "Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$ChatConsentUiModel;", "Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$CustomisationConsentUiModel;", "Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$FunctionalConsentUiModel;", "Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$LucieLabsConsentUiModel;", "Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$SocialConsentUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class ConsentUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConsentValueUiModel f63400a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$AnalyticsConsentUiModel;", "Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;", "Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;", "consentValue", "<init>", "(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AnalyticsConsentUiModel extends ConsentUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ConsentValueUiModel f63401b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnalyticsConsentUiModel(ConsentValueUiModel consentValueUiModel) {
            super(consentValueUiModel, null);
            consentValueUiModel.getClass();
            this.f63401b = consentValueUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AnalyticsConsentUiModel) && this.f63401b == ((AnalyticsConsentUiModel) obj).f63401b;
        }

        public final int hashCode() {
            return this.f63401b.hashCode();
        }

        public final String toString() {
            return "AnalyticsConsentUiModel(consentValue=" + this.f63401b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$ChatConsentUiModel;", "Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;", "Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;", "consentValue", "<init>", "(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ChatConsentUiModel extends ConsentUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ConsentValueUiModel f63402b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChatConsentUiModel(ConsentValueUiModel consentValueUiModel) {
            super(consentValueUiModel, null);
            consentValueUiModel.getClass();
            this.f63402b = consentValueUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ChatConsentUiModel) && this.f63402b == ((ChatConsentUiModel) obj).f63402b;
        }

        public final int hashCode() {
            return this.f63402b.hashCode();
        }

        public final String toString() {
            return "ChatConsentUiModel(consentValue=" + this.f63402b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$CustomisationConsentUiModel;", "Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;", "Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;", "consentValue", "<init>", "(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CustomisationConsentUiModel extends ConsentUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ConsentValueUiModel f63403b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CustomisationConsentUiModel(ConsentValueUiModel consentValueUiModel) {
            super(consentValueUiModel, null);
            consentValueUiModel.getClass();
            this.f63403b = consentValueUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof CustomisationConsentUiModel) && this.f63403b == ((CustomisationConsentUiModel) obj).f63403b;
        }

        public final int hashCode() {
            return this.f63403b.hashCode();
        }

        public final String toString() {
            return "CustomisationConsentUiModel(consentValue=" + this.f63403b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$FunctionalConsentUiModel;", "Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;", "Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;", "consentValue", "<init>", "(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class FunctionalConsentUiModel extends ConsentUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ConsentValueUiModel f63404b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FunctionalConsentUiModel(ConsentValueUiModel consentValueUiModel) {
            super(consentValueUiModel, null);
            consentValueUiModel.getClass();
            this.f63404b = consentValueUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof FunctionalConsentUiModel) && this.f63404b == ((FunctionalConsentUiModel) obj).f63404b;
        }

        public final int hashCode() {
            return this.f63404b.hashCode();
        }

        public final String toString() {
            return "FunctionalConsentUiModel(consentValue=" + this.f63404b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$LucieLabsConsentUiModel;", "Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;", "Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;", "consentValue", "<init>", "(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class LucieLabsConsentUiModel extends ConsentUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ConsentValueUiModel f63405b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LucieLabsConsentUiModel(ConsentValueUiModel consentValueUiModel) {
            super(consentValueUiModel, null);
            consentValueUiModel.getClass();
            this.f63405b = consentValueUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof LucieLabsConsentUiModel) && this.f63405b == ((LucieLabsConsentUiModel) obj).f63405b;
        }

        public final int hashCode() {
            return this.f63405b.hashCode();
        }

        public final String toString() {
            return "LucieLabsConsentUiModel(consentValue=" + this.f63405b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$SocialConsentUiModel;", "Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;", "Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;", "consentValue", "<init>", "(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SocialConsentUiModel extends ConsentUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ConsentValueUiModel f63406b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SocialConsentUiModel(ConsentValueUiModel consentValueUiModel) {
            super(consentValueUiModel, null);
            consentValueUiModel.getClass();
            this.f63406b = consentValueUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SocialConsentUiModel) && this.f63406b == ((SocialConsentUiModel) obj).f63406b;
        }

        public final int hashCode() {
            return this.f63406b.hashCode();
        }

        public final String toString() {
            return "SocialConsentUiModel(consentValue=" + this.f63406b + ")";
        }
    }

    public ConsentUiModel(ConsentValueUiModel consentValueUiModel, DefaultConstructorMarker defaultConstructorMarker) {
        this.f63400a = consentValueUiModel;
    }

    public final ConsentUiModel a(ConsentValueUiModel consentValueUiModel) {
        consentValueUiModel.getClass();
        if (this instanceof FunctionalConsentUiModel) {
            return new FunctionalConsentUiModel(consentValueUiModel);
        }
        if (this instanceof AnalyticsConsentUiModel) {
            return new AnalyticsConsentUiModel(consentValueUiModel);
        }
        if (this instanceof CustomisationConsentUiModel) {
            return new CustomisationConsentUiModel(consentValueUiModel);
        }
        if (this instanceof SocialConsentUiModel) {
            return new SocialConsentUiModel(consentValueUiModel);
        }
        if (this instanceof ChatConsentUiModel) {
            return new ChatConsentUiModel(consentValueUiModel);
        }
        if (this instanceof LucieLabsConsentUiModel) {
            return new LucieLabsConsentUiModel(consentValueUiModel);
        }
        v40.g();
        return null;
    }
}
