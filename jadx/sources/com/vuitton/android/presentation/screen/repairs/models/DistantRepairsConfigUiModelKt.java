package com.vuitton.android.presentation.screen.repairs.models;

import com.vuitton.foundation.model.domain.model.config.DistantRepairsConfig;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class DistantRepairsConfigUiModelKt {
    public static final DistantRepairsConfigUiModel a(DistantRepairsConfig distantRepairsConfig) {
        distantRepairsConfig.getClass();
        String str = distantRepairsConfig.f67242a;
        String str2 = distantRepairsConfig.f67244c;
        if (str2 == null) {
            str2 = "";
        }
        return new DistantRepairsConfigUiModel(str, str2, distantRepairsConfig.f67245e, distantRepairsConfig.f67246f, distantRepairsConfig.g, distantRepairsConfig.f67247h, distantRepairsConfig.f67248i, distantRepairsConfig.f67249j, distantRepairsConfig.f67250k);
    }
}
