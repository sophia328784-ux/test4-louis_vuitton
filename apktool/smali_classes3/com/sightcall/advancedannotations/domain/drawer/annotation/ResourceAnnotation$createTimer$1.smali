.class final Lcom/sightcall/advancedannotations/domain/drawer/annotation/ResourceAnnotation$createTimer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/advancedannotations/domain/drawer/annotation/ResourceAnnotation;->createTimer(JLjava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
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
.field final synthetic $drawables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/PictureDrawable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $duration:J

.field final synthetic $next:I

.field final synthetic this$0:Lcom/sightcall/advancedannotations/domain/drawer/annotation/ResourceAnnotation;


# direct methods
.method public constructor <init>(Lcom/sightcall/advancedannotations/domain/drawer/annotation/ResourceAnnotation;Ljava/util/List;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/advancedannotations/domain/drawer/annotation/ResourceAnnotation;",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/drawable/PictureDrawable;",
            ">;IJ)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/ResourceAnnotation$createTimer$1;->this$0:Lcom/sightcall/advancedannotations/domain/drawer/annotation/ResourceAnnotation;

    iput-object p2, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/ResourceAnnotation$createTimer$1;->$drawables:Ljava/util/List;

    iput p3, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/ResourceAnnotation$createTimer$1;->$next:I

    iput-wide p4, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/ResourceAnnotation$createTimer$1;->$duration:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Long;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/ResourceAnnotation$createTimer$1;->this$0:Lcom/sightcall/advancedannotations/domain/drawer/annotation/ResourceAnnotation;

    iget-object v0, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/ResourceAnnotation$createTimer$1;->$drawables:Ljava/util/List;

    iget v1, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/ResourceAnnotation$createTimer$1;->$next:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/PictureDrawable;

    invoke-static {p1, v0}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/ResourceAnnotation;->access$doRender(Lcom/sightcall/advancedannotations/domain/drawer/annotation/ResourceAnnotation;Landroid/graphics/drawable/PictureDrawable;)V

    iget-object p1, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/ResourceAnnotation$createTimer$1;->this$0:Lcom/sightcall/advancedannotations/domain/drawer/annotation/ResourceAnnotation;

    iget-wide v0, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/ResourceAnnotation$createTimer$1;->$duration:J

    iget-object v2, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/ResourceAnnotation$createTimer$1;->$drawables:Ljava/util/List;

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    iget p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/ResourceAnnotation$createTimer$1;->$next:I

    add-int/lit8 v4, p0, 0x1

    if-le v3, v4, :cond_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p1, v0, v1, v2, p0}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/ResourceAnnotation;->access$createTimer(Lcom/sightcall/advancedannotations/domain/drawer/annotation/ResourceAnnotation;JLjava/util/List;I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/ResourceAnnotation$createTimer$1;->accept(Ljava/lang/Long;)V

    return-void
.end method
