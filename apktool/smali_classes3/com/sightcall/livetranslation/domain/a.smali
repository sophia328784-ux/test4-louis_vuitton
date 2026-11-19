.class public final synthetic Lcom/sightcall/livetranslation/domain/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/sightcall/livetranslation/domain/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/sightcall/livetranslation/domain/a;->b:I

    check-cast p1, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;

    packed-switch p0, :pswitch_data_0

    check-cast p2, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$Hide;

    invoke-static {p1, p2}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl;->j(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$Hide;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p2, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$Show;

    invoke-static {p1, p2}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl;->f(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$Show;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p2, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$SetFontSize;

    invoke-static {p1, p2}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl;->g(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$SetFontSize;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
