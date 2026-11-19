.class public abstract Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/navigation3/runtime/NavKey;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$Companion;,
        Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditBranchId;,
        Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditMyInfo;,
        Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditPassword;,
        Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditTaxId;,
        Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$MyInfo;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u0000 \u00082\u00020\u0001:\u0006\t\n\u000b\u000c\r\u0008B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u0082\u0001\u0005\u000e\u000f\u0010\u0011\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute;",
        "Landroidx/navigation3/runtime/NavKey;",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "<init>",
        "(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "Companion",
        "MyInfo",
        "EditMyInfo",
        "EditPassword",
        "EditTaxId",
        "EditBranchId",
        "Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditBranchId;",
        "Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditMyInfo;",
        "Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditPassword;",
        "Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditTaxId;",
        "Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$MyInfo;",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$Companion;

.field public static final a:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute;->Companion:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Ldd0;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ldd0;-><init>(I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute;->a:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
