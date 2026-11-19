.class public final synthetic Lhx0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;I)V
    .locals 0

    iput p2, p0, Lhx0;->b:I

    iput-object p1, p0, Lhx0;->c:Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lhx0;->b:I

    iget-object p0, p0, Lhx0;->c:Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;

    check-cast p1, Landroid/util/Pair;

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/perfectcorp/perfectlib/SkuSetInfo;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-direct {v0, p0, v1, p1}, Lcom/perfectcorp/perfectlib/SkuSetInfo;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lcom/perfectcorp/perfectlib/SkuSetInfo;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-direct {v0, p0, v1, p1}, Lcom/perfectcorp/perfectlib/SkuSetInfo;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
