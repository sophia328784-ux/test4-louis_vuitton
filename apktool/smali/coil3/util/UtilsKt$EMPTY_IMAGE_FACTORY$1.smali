.class final Lcoil3/util/UtilsKt$EMPTY_IMAGE_FACTORY$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/util/UtilsKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final b:Lcoil3/util/UtilsKt$EMPTY_IMAGE_FACTORY$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcoil3/util/UtilsKt$EMPTY_IMAGE_FACTORY$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcoil3/util/UtilsKt$EMPTY_IMAGE_FACTORY$1;->b:Lcoil3/util/UtilsKt$EMPTY_IMAGE_FACTORY$1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcoil3/request/ImageRequest;

    const/4 p0, 0x0

    return-object p0
.end method
