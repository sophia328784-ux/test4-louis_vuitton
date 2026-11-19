.class public final synthetic Lf7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lf7;->b:I

    iput-object p1, p0, Lf7;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lf7;->b:I

    const/4 v1, 0x1

    iget-object p0, p0, Lf7;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    check-cast p1, Ljava/lang/Long;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :pswitch_0
    check-cast p0, Ljava/lang/Enum;

    check-cast p1, Ljava/lang/Enum;

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_1
    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    check-cast p1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
