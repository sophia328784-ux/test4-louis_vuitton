package com.vuitton.android.presentation.link.models;

import android.content.Intent;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/link/models/LinkTarget;", "", "StandaloneIntent", "ForwardToExistingFlow", "Lcom/vuitton/android/presentation/link/models/LinkTarget$ForwardToExistingFlow;", "Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface LinkTarget {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/link/models/LinkTarget$ForwardToExistingFlow;", "Lcom/vuitton/android/presentation/link/models/LinkTarget;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ForwardToExistingFlow implements LinkTarget {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ForwardToExistingFlow f51635a = new ForwardToExistingFlow();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ForwardToExistingFlow);
        }

        public final int hashCode() {
            return 416486089;
        }

        public final String toString() {
            return "ForwardToExistingFlow";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;", "Lcom/vuitton/android/presentation/link/models/LinkTarget;", "Landroid/content/Intent;", "intent", "<init>", "(Landroid/content/Intent;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class StandaloneIntent implements LinkTarget {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Intent f51636a;

        public StandaloneIntent(Intent intent) {
            intent.getClass();
            this.f51636a = intent;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof StandaloneIntent) && Intrinsics.c(this.f51636a, ((StandaloneIntent) obj).f51636a);
        }

        public final int hashCode() {
            return this.f51636a.hashCode();
        }

        public final String toString() {
            return "StandaloneIntent(intent=" + this.f51636a + ")";
        }
    }
}
