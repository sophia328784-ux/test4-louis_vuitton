package com.vuitton.android.domain.repository;

import com.vuitton.foundation.model.domain.model.privacy.Consent;
import com.vuitton.foundation.model.domain.model.privacy.PrivacyType;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/repository/ConsentRepository;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ConsentRepository {
    void a(Consent consent);

    Object b(boolean z, ContinuationImpl continuationImpl);

    void c(boolean z, boolean z2);

    boolean d();

    Object e(Continuation continuation);

    List f();

    boolean g();

    boolean h();

    void i(List list);

    boolean j();

    PrivacyType k();

    Object l(ContinuationImpl continuationImpl);

    long m();

    boolean n();

    void o();
}
