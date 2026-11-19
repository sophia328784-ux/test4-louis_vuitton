.class Lkotlin/sequences/SequencesKt__SequencesKt;
.super Lkotlin/sequences/SequencesKt__SequencesJVMKt;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x31
    xs = "kotlin/sequences/SequencesKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/sequences/SequencesKt__SequencesJVMKt;-><init>()V

    return-void
.end method

.method public static final a(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FlatteningSequence;
    .locals 3

    instance-of v0, p0, Lkotlin/sequences/TransformingSequence;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/sequences/TransformingSequence;

    new-instance v0, Lkotlin/sequences/FlatteningSequence;

    iget-object v1, p0, Lkotlin/sequences/TransformingSequence;->a:Lkotlin/sequences/Sequence;

    iget-object p0, p0, Lkotlin/sequences/TransformingSequence;->b:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1, p0, p1}, Lkotlin/sequences/FlatteningSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/sequences/FlatteningSequence;

    new-instance v1, Lgt0;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lgt0;-><init>(I)V

    invoke-direct {v0, p0, v1, p1}, Lkotlin/sequences/FlatteningSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method
