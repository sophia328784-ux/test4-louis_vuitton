.class public final synthetic Ll41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J

.field public final synthetic e:J

.field public final synthetic f:Z

.field public final synthetic g:Z

.field public final synthetic h:Lkotlin/jvm/functions/Function0;

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JJZZLkotlin/jvm/functions/Function0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll41;->b:Ljava/lang/String;

    iput-object p2, p0, Ll41;->c:Ljava/lang/String;

    iput-wide p3, p0, Ll41;->d:J

    iput-wide p5, p0, Ll41;->e:J

    iput-boolean p7, p0, Ll41;->f:Z

    iput-boolean p8, p0, Ll41;->g:Z

    iput-object p9, p0, Ll41;->h:Lkotlin/jvm/functions/Function0;

    iput p10, p0, Ll41;->i:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Ll41;->i:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v10

    iget-object v0, p0, Ll41;->b:Ljava/lang/String;

    iget-object v1, p0, Ll41;->c:Ljava/lang/String;

    iget-wide v2, p0, Ll41;->d:J

    iget-wide v4, p0, Ll41;->e:J

    iget-boolean v6, p0, Ll41;->f:Z

    iget-boolean v7, p0, Ll41;->g:Z

    iget-object v8, p0, Ll41;->h:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v0 .. v10}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailPlayerKt;->b(Ljava/lang/String;Ljava/lang/String;JJZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
