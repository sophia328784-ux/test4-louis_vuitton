.class public final synthetic Ljn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcoil3/decode/Decoder$Factory;


# direct methods
.method public synthetic constructor <init>(Lcoil3/decode/Decoder$Factory;I)V
    .locals 0

    iput p2, p0, Ljn;->b:I

    iput-object p1, p0, Ljn;->c:Lcoil3/decode/Decoder$Factory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ljn;->b:I

    iget-object p0, p0, Ljn;->c:Lcoil3/decode/Decoder$Factory;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcoil3/util/UtilsKt;->a:Lkotlin/jvm/functions/Function1;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
