.class public final synthetic Landroidx/credentials/playservices/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    iput p2, p0, Landroidx/credentials/playservices/a;->b:I

    iput-object p1, p0, Landroidx/credentials/playservices/a;->c:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/credentials/playservices/a;->b:I

    iget-object p0, p0, Landroidx/credentials/playservices/a;->c:Lkotlin/jvm/functions/Function1;

    packed-switch v0, :pswitch_data_0

    sget v0, Landroidx/credentials/playservices/HiddenActivity;->d:I

    check-cast p0, Landroidx/credentials/playservices/HiddenActivity$handleBeginSignIn$1$1;

    invoke-virtual {p0, p1}, Landroidx/credentials/playservices/HiddenActivity$handleBeginSignIn$1$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    sget v0, Landroidx/credentials/playservices/HiddenActivity;->d:I

    check-cast p0, Landroidx/credentials/playservices/HiddenActivity$handleGetSignInIntent$1$1;

    invoke-virtual {p0, p1}, Landroidx/credentials/playservices/HiddenActivity$handleGetSignInIntent$1$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_1
    sget v0, Landroidx/credentials/playservices/HiddenActivity;->d:I

    check-cast p0, Landroidx/credentials/playservices/HiddenActivity$handleCreatePassword$1$1;

    invoke-virtual {p0, p1}, Landroidx/credentials/playservices/HiddenActivity$handleCreatePassword$1$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_2
    sget v0, Landroidx/credentials/playservices/HiddenActivity;->d:I

    check-cast p0, Landroidx/credentials/playservices/HiddenActivity$handleCreatePublicKeyCredential$1$1;

    invoke-virtual {p0, p1}, Landroidx/credentials/playservices/HiddenActivity$handleCreatePublicKeyCredential$1$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
