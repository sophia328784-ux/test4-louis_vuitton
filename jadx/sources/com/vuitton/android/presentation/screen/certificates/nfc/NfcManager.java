package com.vuitton.android.presentation.screen.certificates.nfc;

import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.secrets.SecretsProvider;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import lv.nfc.reader.TagNfcManager;

/* JADX INFO: loaded from: classes4.dex */
@Singleton
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\bB\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/nfc/NfcManager;", "", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/foundation/secrets/SecretsProvider;", "secretsProvider", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/foundation/secrets/SecretsProvider;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class NfcManager {
    public static final /* synthetic */ int d = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f55925a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SecretsProvider f55926b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TagNfcManager f55927c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/nfc/NfcManager$Companion;", "", "", "NFC_PRESENCE_CHECK_DELAY", "I", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public NfcManager(Logger logger, SecretsProvider secretsProvider) {
        logger.getClass();
        secretsProvider.getClass();
        this.f55925a = logger;
        this.f55926b = secretsProvider;
        this.f55927c = new TagNfcManager();
    }
}
