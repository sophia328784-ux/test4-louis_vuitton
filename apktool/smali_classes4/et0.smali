.class public final synthetic Let0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:J

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic i:Landroidx/compose/ui/text/style/TextAlign;

.field public final synthetic j:I

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/style/TextAlign;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Let0;->b:Ljava/lang/String;

    iput-object p2, p0, Let0;->c:Landroidx/compose/ui/Modifier;

    iput-wide p3, p0, Let0;->d:J

    iput p5, p0, Let0;->e:I

    iput p6, p0, Let0;->f:I

    iput p7, p0, Let0;->g:I

    iput-object p8, p0, Let0;->h:Landroidx/compose/ui/text/TextStyle;

    iput-object p9, p0, Let0;->i:Landroidx/compose/ui/text/style/TextAlign;

    iput p10, p0, Let0;->j:I

    iput p11, p0, Let0;->k:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Let0;->j:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v10

    iget-object v0, p0, Let0;->b:Ljava/lang/String;

    iget-object v1, p0, Let0;->c:Landroidx/compose/ui/Modifier;

    iget-wide v2, p0, Let0;->d:J

    iget v4, p0, Let0;->e:I

    iget v5, p0, Let0;->f:I

    iget v6, p0, Let0;->g:I

    iget-object v7, p0, Let0;->h:Landroidx/compose/ui/text/TextStyle;

    iget-object v8, p0, Let0;->i:Landroidx/compose/ui/text/style/TextAlign;

    iget v11, p0, Let0;->k:I

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/designkit/components/components/ResizableTextKt;->a(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
