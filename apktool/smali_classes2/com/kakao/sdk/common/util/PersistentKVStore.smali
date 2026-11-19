.class public interface abstract Lcom/kakao/sdk/common/util/PersistentKVStore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008f\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/kakao/sdk/common/util/PersistentKVStore;",
        "",
        "common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract putString(Ljava/lang/String;Ljava/lang/String;)Lcom/kakao/sdk/common/util/SharedPrefsWrapper;
.end method
