package com.vuitton.android.presentation.screen.certificates.model;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0017\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/Required;", "Lcom/vuitton/android/presentation/screen/certificates/model/Validator;", "", "message", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public class Required implements Validator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f55898a;

    public /* synthetic */ Required(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str);
    }

    public Required(String str) {
        this.f55898a = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Required() {
        this(null, 1, 0 == true ? 1 : 0);
    }
}
