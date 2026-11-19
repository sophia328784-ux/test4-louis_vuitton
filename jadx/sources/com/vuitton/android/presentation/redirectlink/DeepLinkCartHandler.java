package com.vuitton.android.presentation.redirectlink;

import com.vuitton.android.presentation.link.builder.WebAppLinkBuilder;
import com.vuitton.foundation.logger.Logger;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\nB!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/DeepLinkCartHandler;", "", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;", "emitter", "Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;", "webAppLinkBuilder", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DeepLinkCartHandler {
    public static final String d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f51909a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkEffectEmitter f51910b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WebAppLinkBuilder f51911c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/DeepLinkCartHandler$Companion;", "", "", "TAG", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        d = Reflection.f71922a.b(DeepLinkCartHandler.class).B();
    }

    @Inject
    public DeepLinkCartHandler(Logger logger, LinkEffectEmitter linkEffectEmitter, WebAppLinkBuilder webAppLinkBuilder) {
        logger.getClass();
        linkEffectEmitter.getClass();
        webAppLinkBuilder.getClass();
        this.f51909a = logger;
        this.f51910b = linkEffectEmitter;
        this.f51911c = webAppLinkBuilder;
    }
}
