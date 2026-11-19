.class public final synthetic Lo71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/work/impl/model/WorkSpecDao_Impl;

.field public final synthetic d:Landroidx/sqlite/SQLiteConnection;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/sqlite/SQLiteConnection;I)V
    .locals 0

    iput p3, p0, Lo71;->b:I

    iput-object p1, p0, Lo71;->c:Landroidx/work/impl/model/WorkSpecDao_Impl;

    iput-object p2, p0, Lo71;->d:Landroidx/sqlite/SQLiteConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lo71;->b:I

    iget-object v1, p0, Lo71;->d:Landroidx/sqlite/SQLiteConnection;

    iget-object p0, p0, Lo71;->c:Landroidx/work/impl/model/WorkSpecDao_Impl;

    check-cast p1, Landroidx/collection/ArrayMap;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->c:Landroidx/work/impl/model/WorkSpecDao_Impl$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v1, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->C(Landroidx/sqlite/SQLiteConnection;Landroidx/collection/ArrayMap;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->c:Landroidx/work/impl/model/WorkSpecDao_Impl$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v1, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->B(Landroidx/sqlite/SQLiteConnection;Landroidx/collection/ArrayMap;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
