package com.vuitton.android.data.repository;

import android.content.SharedPreferences;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.domain.repository.SharedPreferencesRepository;
import dagger.Lazy;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0007B\u0019\b\u0007\u0012\u000e\b\u0001\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/vuitton/android/data/repository/SharedPreferencesRepositoryImpl;", "Lcom/vuitton/android/domain/repository/SharedPreferencesRepository;", "Ldagger/Lazy;", "Landroid/content/SharedPreferences;", "encryptedSharedPreferences", "<init>", "(Ldagger/Lazy;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SharedPreferencesRepositoryImpl implements SharedPreferencesRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Lazy f48025a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/repository/SharedPreferencesRepositoryImpl$Companion;", "", "", "SHOW_AR_LOCATION_BOTTOM_SHEET", "Ljava/lang/String;", "SHOW_INBOX_LONG_PRESS_TOOLTIP", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public SharedPreferencesRepositoryImpl(Lazy<SharedPreferences> lazy) {
        lazy.getClass();
        this.f48025a = lazy;
    }

    @Override // com.vuitton.android.domain.repository.InboxRepository
    public final void a() {
        Object obj = this.f48025a.get();
        obj.getClass();
        SharedPreferences.Editor editorEdit = ((SharedPreferences) obj).edit();
        editorEdit.putBoolean("SHOW_INBOX_LONG_PRESS_TOOLTIP", false);
        editorEdit.apply();
    }

    @Override // com.vuitton.android.domain.repository.ArLocationRepository
    public final void b() {
        Object obj = this.f48025a.get();
        obj.getClass();
        SharedPreferences.Editor editorEdit = ((SharedPreferences) obj).edit();
        editorEdit.putBoolean("show_ar_location_bottom_sheet", false);
        editorEdit.apply();
    }

    @Override // com.vuitton.android.domain.repository.InboxRepository
    public final boolean c() {
        return ((SharedPreferences) this.f48025a.get()).getBoolean("SHOW_INBOX_LONG_PRESS_TOOLTIP", true);
    }
}
