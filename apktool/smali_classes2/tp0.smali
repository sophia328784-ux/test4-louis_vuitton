.class public final synthetic Ltp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/google/firebase/sessions/ProcessDataManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/sessions/ProcessDataManagerImpl;I)V
    .locals 0

    iput p2, p0, Ltp0;->b:I

    iput-object p1, p0, Ltp0;->c:Lcom/google/firebase/sessions/ProcessDataManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ltp0;->b:I

    iget-object p0, p0, Ltp0;->c:Lcom/google/firebase/sessions/ProcessDataManagerImpl;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/firebase/sessions/ProcessDataManagerImpl;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/firebase/sessions/ProcessDetailsProvider;->b(Landroid/content/Context;)Lcom/google/firebase/sessions/ProcessDetails;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/firebase/sessions/ProcessDataManagerImpl;->e:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/sessions/ProcessDetails;

    iget-object p0, p0, Lcom/google/firebase/sessions/ProcessDetails;->a:Ljava/lang/String;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
