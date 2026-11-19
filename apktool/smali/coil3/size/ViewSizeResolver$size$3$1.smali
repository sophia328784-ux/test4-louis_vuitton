.class final Lcoil3/size/ViewSizeResolver$size$3$1;
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
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lcoil3/size/ViewSizeResolver;

.field public final synthetic c:Landroid/view/ViewTreeObserver;

.field public final synthetic d:Lcoil3/size/ViewSizeResolver$size$3$preDrawListener$1;


# direct methods
.method public constructor <init>(Lcoil3/size/ViewSizeResolver;Landroid/view/ViewTreeObserver;Lcoil3/size/ViewSizeResolver$size$3$preDrawListener$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil3/size/ViewSizeResolver$size$3$1;->b:Lcoil3/size/ViewSizeResolver;

    iput-object p2, p0, Lcoil3/size/ViewSizeResolver$size$3$1;->c:Landroid/view/ViewTreeObserver;

    iput-object p3, p0, Lcoil3/size/ViewSizeResolver$size$3$1;->d:Lcoil3/size/ViewSizeResolver$size$3$preDrawListener$1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Lcoil3/size/ViewSizeResolver$size$3$1;->c:Landroid/view/ViewTreeObserver;

    iget-object v0, p0, Lcoil3/size/ViewSizeResolver$size$3$1;->d:Lcoil3/size/ViewSizeResolver$size$3$preDrawListener$1;

    iget-object p0, p0, Lcoil3/size/ViewSizeResolver$size$3$1;->b:Lcoil3/size/ViewSizeResolver;

    invoke-interface {p0, p1, v0}, Lcoil3/size/ViewSizeResolver;->p(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
