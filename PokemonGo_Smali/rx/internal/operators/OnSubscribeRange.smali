.class public final Lrx/internal/operators/OnSubscribeRange;
.super Ljava/lang/Object;
.source "OnSubscribeRange.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeRange$RangeProducer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final endIndex:I

.field private final startIndex:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lrx/internal/operators/OnSubscribeRange;->startIndex:I

    .line 33
    iput p2, p0, Lrx/internal/operators/OnSubscribeRange;->endIndex:I

    .line 34
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeRange;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "childSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Integer;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;

    iget v1, p0, Lrx/internal/operators/OnSubscribeRange;->startIndex:I

    iget v2, p0, Lrx/internal/operators/OnSubscribeRange;->endIndex:I

    invoke-direct {v0, p1, v1, v2}, Lrx/internal/operators/OnSubscribeRange$RangeProducer;-><init>(Lrx/Subscriber;II)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 39
    return-void
.end method
