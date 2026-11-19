package com.vuitton.android.presentation.model.stringhandling;

import android.content.Context;
import android.content.res.Resources;
import com.vuitton.foundation.model.domain.model.common.StringResource;
import defpackage.ef;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;
import org.teleal.cling.support.contentdirectory.callback.Browse;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class StringResourceUiModelKt {
    public static final String a(StringResourceUiModel stringResourceUiModel, Context context) {
        stringResourceUiModel.getClass();
        context.getClass();
        if (stringResourceUiModel instanceof StringResourceUiModel.ResId) {
            StringResourceUiModel.ResId resId = (StringResourceUiModel.ResId) stringResourceUiModel;
            int i2 = resId.f51828b;
            Object[] array = resId.f51829c.toArray(new Object[0]);
            String string = context.getString(i2, Arrays.copyOf(array, array.length));
            string.getClass();
            return string;
        }
        if (stringResourceUiModel instanceof StringResourceUiModel.PluralResId) {
            Resources resources = context.getResources();
            StringResourceUiModel.PluralResId pluralResId = (StringResourceUiModel.PluralResId) stringResourceUiModel;
            int i3 = pluralResId.f51826b;
            int i4 = pluralResId.f51827c;
            Object[] array2 = pluralResId.d.toArray(new Object[0]);
            String quantityString = resources.getQuantityString(i3, i4, Arrays.copyOf(array2, array2.length));
            quantityString.getClass();
            return quantityString;
        }
        if (stringResourceUiModel instanceof StringResourceUiModel.ResName) {
            StringResourceUiModel.ResName resName = (StringResourceUiModel.ResName) stringResourceUiModel;
            int identifier = context.getResources().getIdentifier(resName.f51830b, "string", context.getPackageName());
            if (identifier == 0) {
                return a(resName.d, context);
            }
            Object[] array3 = resName.f51831c.toArray(new Object[0]);
            String string2 = context.getString(identifier, Arrays.copyOf(array3, array3.length));
            string2.getClass();
            return string2;
        }
        if (stringResourceUiModel instanceof StringResourceUiModel.Text) {
            return ((StringResourceUiModel.Text) stringResourceUiModel).f51832b;
        }
        CharSequence charSequenceSubSequence = "";
        if (!(stringResourceUiModel instanceof StringResourceUiModel.WithoutTrailingAsterisk)) {
            if (stringResourceUiModel instanceof StringResourceUiModel.ConcatStringResource) {
                return CollectionsKt.K(((StringResourceUiModel.ConcatStringResource) stringResourceUiModel).f51824b, "", null, null, new ef(context, 16), 30);
            }
            if (stringResourceUiModel.equals(StringResourceUiModel.Empty.f51825b)) {
                return "";
            }
            v40.g();
            return null;
        }
        String strF = StringsKt.F(a(((StringResourceUiModel.WithoutTrailingAsterisk) stringResourceUiModel).f51833b, context), Browse.CAPS_WILDCARD);
        int length = strF.length() - 1;
        if (length >= 0) {
            while (true) {
                int i5 = length - 1;
                if (!CharsKt.c(strF.charAt(length))) {
                    charSequenceSubSequence = strF.subSequence(0, length + 1);
                    break;
                }
                if (i5 < 0) {
                    break;
                }
                length = i5;
            }
        }
        return charSequenceSubSequence.toString();
    }

    public static final boolean b(StringResourceUiModel stringResourceUiModel) {
        stringResourceUiModel.getClass();
        if (stringResourceUiModel instanceof StringResourceUiModel.Empty) {
            return true;
        }
        if ((stringResourceUiModel instanceof StringResourceUiModel.Text) && ((StringResourceUiModel.Text) stringResourceUiModel).f51832b.length() == 0) {
            return true;
        }
        return (stringResourceUiModel instanceof StringResourceUiModel.ResName) && ((StringResourceUiModel.ResName) stringResourceUiModel).f51830b.length() == 0;
    }

    public static final StringResourceUiModel c(StringResource stringResource) {
        stringResource.getClass();
        if (stringResource instanceof StringResource.ResId) {
            StringResource.ResId resId = (StringResource.ResId) stringResource;
            return new StringResourceUiModel.ResId(resId.f67148a, resId.f67149b);
        }
        if (stringResource instanceof StringResource.PluralResId) {
            StringResource.PluralResId pluralResId = (StringResource.PluralResId) stringResource;
            return new StringResourceUiModel.PluralResId(pluralResId.f67145a, pluralResId.f67146b, pluralResId.f67147c);
        }
        if (stringResource instanceof StringResource.ResName) {
            StringResource.ResName resName = (StringResource.ResName) stringResource;
            return new StringResourceUiModel.ResName(resName.f67150a, resName.f67151b, c(resName.f67152c));
        }
        if (stringResource instanceof StringResource.Text) {
            return new StringResourceUiModel.Text(((StringResource.Text) stringResource).f67153a);
        }
        if (Intrinsics.c(stringResource, StringResource.Empty.f67144a)) {
            return StringResourceUiModel.Empty.f51825b;
        }
        if (!(stringResource instanceof StringResource.ConcatStringResource)) {
            v40.g();
            return null;
        }
        List list = ((StringResource.ConcatStringResource) stringResource).f67143a;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(c((StringResource) it.next()));
        }
        return new StringResourceUiModel.ConcatStringResource(arrayList);
    }
}
