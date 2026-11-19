.class public final Landroidx/compose/ui/text/TextInclusionStrategy$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/TextInclusionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Landroidx/compose/ui/text/TextInclusionStrategy$Companion;",
        "",
        "ui-text"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lb21;

.field public static final b:Lb21;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb21;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lb21;-><init>(I)V

    sput-object v0, Landroidx/compose/ui/text/TextInclusionStrategy$Companion;->a:Lb21;

    new-instance v0, Lb21;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lb21;-><init>(I)V

    sput-object v0, Landroidx/compose/ui/text/TextInclusionStrategy$Companion;->b:Lb21;

    return-void
.end method
