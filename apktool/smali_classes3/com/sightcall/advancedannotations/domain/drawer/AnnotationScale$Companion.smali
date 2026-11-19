.class public final Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale$Companion;",
        "",
        "<init>",
        "()V",
        "WidthReference",
        "",
        "fromView",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;",
        "view",
        "Landroid/view/View;",
        "value",
        "advancedannotations_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromView(Landroid/view/View;F)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p2, v0

    invoke-static {p2}, Lkotlin/math/MathKt;->c(F)I

    move-result p2

    invoke-static {p2, p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommandKt;->fromView(ILandroid/view/View;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;-><init>(I)V

    return-object p0
.end method
