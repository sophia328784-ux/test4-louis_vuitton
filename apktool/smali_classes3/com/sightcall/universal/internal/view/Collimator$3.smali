.class Lcom/sightcall/universal/internal/view/Collimator$3;
.super Landroid/graphics/Paint;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/view/Collimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/view/Collimator;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/view/Collimator;I)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/Collimator$3;->this$0:Lcom/sightcall/universal/internal/view/Collimator;

    invoke-direct {p0, p2}, Landroid/graphics/Paint;-><init>(I)V

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method
