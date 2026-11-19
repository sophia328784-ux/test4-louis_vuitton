package com.vuitton.android.presentation.screen.options.accessibility.models;

import defpackage.a;
import defpackage.cj;
import defpackage.o60;
import defpackage.tr;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0007\u0002\u0003\u0004\u0005\u0006\u0007\b\u0082\u0001\u0007\t\n\u000b\f\r\u000e\u000f¨\u0006\u0010À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel;", "", "Screen", "Close", "SimplifyNavigationChanged", "DisableAutoplayChanged", "EnhancedContrastChanged", "Save", "OpenStatement", "Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$Close;", "Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$DisableAutoplayChanged;", "Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$EnhancedContrastChanged;", "Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$OpenStatement;", "Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$Save;", "Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$Screen;", "Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$SimplifyNavigationChanged;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AccessibilityPreferencesTrackingUiModel {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$Close;", "Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Close implements AccessibilityPreferencesTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Close f59727a = new Close();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Close);
        }

        public final int hashCode() {
            return 914469321;
        }

        public final String toString() {
            return "Close";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$DisableAutoplayChanged;", "Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel;", "", "enabled", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class DisableAutoplayChanged implements AccessibilityPreferencesTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f59728a;

        public DisableAutoplayChanged(boolean z) {
            this.f59728a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof DisableAutoplayChanged) && this.f59728a == ((DisableAutoplayChanged) obj).f59728a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f59728a);
        }

        public final String toString() {
            return tr.i("DisableAutoplayChanged(enabled=", ")", this.f59728a);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$EnhancedContrastChanged;", "Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel;", "", "enabled", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class EnhancedContrastChanged implements AccessibilityPreferencesTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f59729a;

        public EnhancedContrastChanged(boolean z) {
            this.f59729a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof EnhancedContrastChanged) && this.f59729a == ((EnhancedContrastChanged) obj).f59729a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f59729a);
        }

        public final String toString() {
            return tr.i("EnhancedContrastChanged(enabled=", ")", this.f59729a);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$OpenStatement;", "Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenStatement implements AccessibilityPreferencesTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OpenStatement f59730a = new OpenStatement();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenStatement);
        }

        public final int hashCode() {
            return 313657622;
        }

        public final String toString() {
            return "OpenStatement";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$Save;", "Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel;", "", "simplifyNavigation", "enhancedContrast", "disableAutoplay", "<init>", "(ZZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Save implements AccessibilityPreferencesTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f59731a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f59732b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f59733c;

        public Save(boolean z, boolean z2, boolean z3) {
            this.f59731a = z;
            this.f59732b = z2;
            this.f59733c = z3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Save)) {
                return false;
            }
            Save save = (Save) obj;
            return this.f59731a == save.f59731a && this.f59732b == save.f59732b && this.f59733c == save.f59733c;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f59733c) + o60.b(Boolean.hashCode(this.f59731a) * 31, 31, this.f59732b);
        }

        public final String toString() {
            return a.p(cj.m("Save(simplifyNavigation=", ", enhancedContrast=", ", disableAutoplay=", this.f59731a, this.f59732b), this.f59733c, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$Screen;", "Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Screen implements AccessibilityPreferencesTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Screen f59734a = new Screen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Screen);
        }

        public final int hashCode() {
            return -1266391365;
        }

        public final String toString() {
            return "Screen";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$SimplifyNavigationChanged;", "Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel;", "", "enabled", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SimplifyNavigationChanged implements AccessibilityPreferencesTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f59735a;

        public SimplifyNavigationChanged(boolean z) {
            this.f59735a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SimplifyNavigationChanged) && this.f59735a == ((SimplifyNavigationChanged) obj).f59735a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f59735a);
        }

        public final String toString() {
            return tr.i("SimplifyNavigationChanged(enabled=", ")", this.f59735a);
        }
    }
}
