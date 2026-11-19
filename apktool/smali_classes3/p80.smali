.class public final synthetic Lp80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic e:J

.field public final synthetic f:J

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lkotlin/jvm/functions/Function0;

.field public final synthetic i:Landroidx/compose/ui/Modifier;

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(IILandroidx/compose/ui/text/TextStyle;JJLjava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lp80;->b:I

    iput p2, p0, Lp80;->c:I

    iput-object p3, p0, Lp80;->d:Landroidx/compose/ui/text/TextStyle;

    iput-wide p4, p0, Lp80;->e:J

    iput-wide p6, p0, Lp80;->f:J

    iput-object p8, p0, Lp80;->g:Ljava/lang/String;

    iput-object p9, p0, Lp80;->h:Lkotlin/jvm/functions/Function0;

    iput-object p10, p0, Lp80;->i:Landroidx/compose/ui/Modifier;

    iput p12, p0, Lp80;->j:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p1, 0x30001

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v11

    iget v0, p0, Lp80;->b:I

    iget v1, p0, Lp80;->c:I

    iget-object v2, p0, Lp80;->d:Landroidx/compose/ui/text/TextStyle;

    iget-wide v3, p0, Lp80;->e:J

    iget-wide v5, p0, Lp80;->f:J

    iget-object v7, p0, Lp80;->g:Ljava/lang/String;

    iget-object v8, p0, Lp80;->h:Lkotlin/jvm/functions/Function0;

    iget-object v9, p0, Lp80;->i:Landroidx/compose/ui/Modifier;

    iget v12, p0, Lp80;->j:I

    invoke-static/range {v0 .. v12}, Lcom/vuitton/android/designkit/components/components/LVTextWithClickableLinkKt;->a(IILandroidx/compose/ui/text/TextStyle;JJLjava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
