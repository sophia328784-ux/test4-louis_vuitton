package com.vuitton.android.presentation.screen.imagepicker;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import androidx.fragment.app.FragmentActivity;
import com.vuitton.android.presentation.utils.FileUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URI;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.imagepicker.ImageCropFragment$onViewCreated$1$1$1$1", f = "ImageCropFragment.kt", l = {}, m = "invokeSuspend", v = 2)
public final class ImageCropFragment$onViewCreated$1$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ImageCropFragment f58195b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Ref$ObjectRef f58196c;
    public final /* synthetic */ Bitmap d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImageCropFragment$onViewCreated$1$1$1$1(ImageCropFragment imageCropFragment, Ref$ObjectRef ref$ObjectRef, Bitmap bitmap, Continuation continuation) {
        super(2, continuation);
        this.f58195b = imageCropFragment;
        this.f58196c = ref$ObjectRef;
        this.d = bitmap;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ImageCropFragment$onViewCreated$1$1$1$1(this.f58195b, this.f58196c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ImageCropFragment$onViewCreated$1$1$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Uri uri;
        ImageCropFragment imageCropFragment = this.f58195b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        try {
            Bundle arguments = imageCropFragment.getArguments();
            Ref$ObjectRef ref$ObjectRef = this.f58196c;
            if (arguments != null && arguments.getBoolean("isFromGallery")) {
                Context contextRequireContext = imageCropFragment.requireContext();
                contextRequireContext.getClass();
                File fileB = FileUtils.b(contextRequireContext);
                String str = (String) ref$ObjectRef.f71921b;
                if (str != null && (uri = Uri.parse(str)) != null) {
                    FragmentActivity fragmentActivityRequireActivity = imageCropFragment.requireActivity();
                    fragmentActivityRequireActivity.getClass();
                    FileUtils.a(fragmentActivityRequireActivity, uri, fileB);
                }
                ref$ObjectRef.f71921b = Uri.fromFile(fileB).toString();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(new File(new URI((String) ref$ObjectRef.f71921b)));
            try {
                Bitmap.createScaledBitmap(this.d, 600, 600, true).compress(Bitmap.CompressFormat.JPEG, 90, fileOutputStream);
                FragmentActivity activity = imageCropFragment.getActivity();
                if (activity != null) {
                    activity.setResult(-1, new Intent().putExtra("IMAGE_RESULT", (String) ref$ObjectRef.f71921b));
                    activity.finish();
                }
                fileOutputStream.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.a(fileOutputStream, th);
                    throw th2;
                }
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        return Unit.f71739a;
    }
}
