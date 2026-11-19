package com.vuitton.android.presentation.screen.account.editavatar.mappers;

import com.vuitton.android.presentation.screen.account.editavatar.models.AvatarItemUiModel;
import com.vuitton.android.presentation.screen.account.editavatar.models.AvatarLibraryUiModel;
import com.vuitton.android.presentation.screen.account.editavatar.models.AvatarSectionUiModel;
import com.vuitton.foundation.model.domain.model.avatar.AvatarItem;
import com.vuitton.foundation.model.domain.model.avatar.AvatarResponse;
import com.vuitton.foundation.model.domain.model.avatar.AvatarSection;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AvatarUiModelMapperKt {
    public static final AvatarLibraryUiModel a(AvatarResponse avatarResponse, String str) {
        avatarResponse.getClass();
        List<AvatarSection> list = avatarResponse.f66667a;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (AvatarSection avatarSection : list) {
            avatarSection.getClass();
            String str2 = avatarSection.f66669a;
            List<AvatarItem> list2 = avatarSection.f66670b;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
            for (AvatarItem avatarItem : list2) {
                boolean zC = Intrinsics.c(avatarItem.f66664a, str);
                String str3 = avatarItem.f66664a;
                AssetImage assetImage = avatarItem.f66665b;
                arrayList2.add(new AvatarItemUiModel(str3, assetImage.f67108a, assetImage.d, avatarItem.f66666c, zC));
            }
            arrayList.add(new AvatarSectionUiModel(str2, arrayList2));
        }
        AvatarItem avatarItem2 = avatarResponse.f66668b;
        avatarItem2.getClass();
        String str4 = avatarItem2.f66664a;
        AssetImage assetImage2 = avatarItem2.f66665b;
        return new AvatarLibraryUiModel(arrayList, new AvatarItemUiModel(str4, assetImage2.f67108a, assetImage2.d, avatarItem2.f66666c, false));
    }
}
