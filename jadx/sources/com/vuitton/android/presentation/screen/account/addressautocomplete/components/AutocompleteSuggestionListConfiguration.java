package com.vuitton.android.presentation.screen.account.addressautocomplete.components;

import androidx.compose.ui.graphics.Color;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0082\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AutocompleteSuggestionListConfiguration;", "", "Landroidx/compose/ui/graphics/Color;", "contentColor", "contentSubtleColor", "dividerColor", "<init>", "(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
final /* data */ class AutocompleteSuggestionListConfiguration {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f52106a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f52107b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f52108c;

    public AutocompleteSuggestionListConfiguration(long j2, long j3, long j4, DefaultConstructorMarker defaultConstructorMarker) {
        this.f52106a = j2;
        this.f52107b = j3;
        this.f52108c = j4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AutocompleteSuggestionListConfiguration)) {
            return false;
        }
        AutocompleteSuggestionListConfiguration autocompleteSuggestionListConfiguration = (AutocompleteSuggestionListConfiguration) obj;
        return Color.c(this.f52106a, autocompleteSuggestionListConfiguration.f52106a) && Color.c(this.f52107b, autocompleteSuggestionListConfiguration.f52107b) && Color.c(this.f52108c, autocompleteSuggestionListConfiguration.f52108c);
    }

    public final int hashCode() {
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        return Long.hashCode(this.f52108c) + fc.a(Long.hashCode(this.f52106a) * 31, 31, this.f52107b);
    }

    public final String toString() {
        return n00.r(Color.i(this.f52108c), ")", fc.s("AutocompleteSuggestionListConfiguration(contentColor=", Color.i(this.f52106a), ", contentSubtleColor=", Color.i(this.f52107b), ", dividerColor="));
    }
}
