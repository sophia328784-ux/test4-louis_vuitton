package com.vuitton.android.presentation.link.builder;

import com.vuitton.android.domain.usecase.config.GetLanguageTagOfFacadeMyLVApiUrlUseCase;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import defpackage.d21;
import java.net.URI;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.CollectionsKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;", "", "Lcom/vuitton/android/domain/usecase/config/GetLanguageTagOfFacadeMyLVApiUrlUseCase;", "getLanguageTagOfFacadeMyLVApiUrlUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/config/GetLanguageTagOfFacadeMyLVApiUrlUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PassAppLinkBuilder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GetLanguageTagOfFacadeMyLVApiUrlUseCase f51630a;

    @Inject
    public PassAppLinkBuilder(GetLanguageTagOfFacadeMyLVApiUrlUseCase getLanguageTagOfFacadeMyLVApiUrlUseCase) {
        getLanguageTagOfFacadeMyLVApiUrlUseCase.getClass();
        this.f51630a = getLanguageTagOfFacadeMyLVApiUrlUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0011  */
    public final String a(List list) {
        Object failure;
        String str;
        String path;
        Object next;
        list.getClass();
        String str2 = this.f51630a.f49680a.a().z;
        if (str2 == null) {
            str = null;
        } else {
            try {
                Result.Companion companion = Result.INSTANCE;
                failure = StringKtExtKt.l(str2);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                failure = new Result.Failure(th);
            }
            if (failure instanceof Result.Failure) {
                failure = null;
            }
            URI uri = (URI) failure;
            if (uri == null || (path = uri.getPath()) == null) {
                str = null;
            } else {
                List listM = StringsKt.M(path, new char[]{'/'});
                ArrayList arrayList = new ArrayList();
                for (Object obj : listM) {
                    if (!StringsKt.w((String) obj)) {
                        arrayList.add(obj);
                    }
                }
                Regex regex = new Regex("^[a-zA-Z]{2,4}-[a-zA-Z1-9]{2}$");
                Iterator it = arrayList.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!regex.f((String) next));
                str = (String) next;
            }
            if (str == null) {
                str = null;
            }
        }
        return d21.j(StringKtExtKt.a(String.format("https://pass.louisvuitton.com/%s/app/", Arrays.copyOf(new Object[]{str != null ? str : null}, 1))), CollectionsKt.K(list, "/", null, null, null, 62));
    }
}
