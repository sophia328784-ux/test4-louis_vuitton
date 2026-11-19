.class final Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Landroidx/activity/result/ActivityResultRegistry$register$3;


# direct methods
.method public constructor <init>(Landroidx/activity/result/ActivityResultRegistry$register$3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2$1$1;->b:Landroidx/activity/result/ActivityResultRegistry$register$3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2$1$1;->b:Landroidx/activity/result/ActivityResultRegistry$register$3;

    invoke-virtual {p0}, Landroidx/activity/result/ActivityResultRegistry$register$3;->b()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
