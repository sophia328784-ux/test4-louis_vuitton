.class public final synthetic Lkv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/core/helper/DebounceHandler;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/core/helper/DebounceHandler;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    iput p3, p0, Lkv;->b:I

    iput-object p1, p0, Lkv;->c:Lcom/vuitton/android/core/helper/DebounceHandler;

    iput-object p2, p0, Lkv;->d:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lkv;->b:I

    iget-object v1, p0, Lkv;->d:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lkv;->c:Lcom/vuitton/android/core/helper/DebounceHandler;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/phone/PhoneType;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/vuitton/android/core/helper/DebounceHandler;->b:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/vuitton/android/core/helper/DebounceHandler;->a:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    iput-wide v2, p0, Lcom/vuitton/android/core/helper/DebounceHandler;->b:J

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/phone/PhoneType;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/vuitton/android/core/helper/DebounceHandler;->b:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/vuitton/android/core/helper/DebounceHandler;->a:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    iput-wide v2, p0, Lcom/vuitton/android/core/helper/DebounceHandler;->b:J

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/vuitton/android/core/helper/DebounceHandler;->b:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/vuitton/android/core/helper/DebounceHandler;->a:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    iput-wide v2, p0, Lcom/vuitton/android/core/helper/DebounceHandler;->b:J

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
