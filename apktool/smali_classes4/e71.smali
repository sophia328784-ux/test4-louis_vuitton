.class public final synthetic Le71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;III)V
    .locals 0

    iput p4, p0, Le71;->b:I

    iput-object p1, p0, Le71;->c:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;

    iput p2, p0, Le71;->d:I

    iput p3, p0, Le71;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Le71;->b:I

    const-string v1, "linkHandler"

    const-string v2, "chatAttachable"

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    move-object v6, p1

    check-cast v6, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;

    sget-object p1, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->t:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p0, Le71;->c:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;

    iget-object v4, v5, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->q:Lcom/vuitton/android/presentation/link/LinkHandler;

    if-eqz v4, :cond_1

    iget-object v9, v5, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->r:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    if-eqz v9, :cond_0

    iget v7, p0, Le71;->d:I

    iget v8, p0, Le71;->e:I

    invoke-virtual/range {v4 .. v9}, Lcom/vuitton/android/presentation/link/LinkHandler;->d(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;IILcom/vuitton/android/presentation/chat/ChatAttachable;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    check-cast p1, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;

    sget-object v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->t:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v1

    iget-object v1, p0, Le71;->c:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;

    move-object v4, v0

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->q:Lcom/vuitton/android/presentation/link/LinkHandler;

    if-eqz v0, :cond_3

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->r:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    if-eqz v5, :cond_2

    iget v3, p0, Le71;->d:I

    iget v4, p0, Le71;->e:I

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/vuitton/android/presentation/link/LinkHandler;->d(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;IILcom/vuitton/android/presentation/chat/ChatAttachable;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3

    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3

    :pswitch_1
    move-object v4, v1

    check-cast p1, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;

    sget-object v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->t:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Le71;->c:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->q:Lcom/vuitton/android/presentation/link/LinkHandler;

    if-eqz v0, :cond_5

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->r:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    if-eqz v5, :cond_4

    iget v3, p0, Le71;->d:I

    iget v4, p0, Le71;->e:I

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/vuitton/android/presentation/link/LinkHandler;->d(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;IILcom/vuitton/android/presentation/chat/ChatAttachable;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3

    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
