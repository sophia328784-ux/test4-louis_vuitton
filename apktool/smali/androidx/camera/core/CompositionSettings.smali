.class public Landroidx/camera/core/CompositionSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/CompositionSettings$Builder;
    }
.end annotation


# static fields
.field public static final c:Landroidx/camera/core/CompositionSettings;


# instance fields
.field public final a:Landroidx/core/util/Pair;

.field public final b:Landroidx/core/util/Pair;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/camera/core/CompositionSettings$Builder;

    invoke-direct {v0}, Landroidx/camera/core/CompositionSettings$Builder;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    new-instance v3, Landroidx/core/util/Pair;

    invoke-direct {v3, v2, v2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, v0, Landroidx/camera/core/CompositionSettings$Builder;->a:Landroidx/core/util/Pair;

    new-instance v2, Landroidx/core/util/Pair;

    invoke-direct {v2, v1, v1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Landroidx/camera/core/CompositionSettings;

    iget-object v0, v0, Landroidx/camera/core/CompositionSettings$Builder;->a:Landroidx/core/util/Pair;

    invoke-direct {v1, v0, v2}, Landroidx/camera/core/CompositionSettings;-><init>(Landroidx/core/util/Pair;Landroidx/core/util/Pair;)V

    sput-object v1, Landroidx/camera/core/CompositionSettings;->c:Landroidx/camera/core/CompositionSettings;

    return-void
.end method

.method public constructor <init>(Landroidx/core/util/Pair;Landroidx/core/util/Pair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/CompositionSettings;->a:Landroidx/core/util/Pair;

    iput-object p2, p0, Landroidx/camera/core/CompositionSettings;->b:Landroidx/core/util/Pair;

    return-void
.end method
