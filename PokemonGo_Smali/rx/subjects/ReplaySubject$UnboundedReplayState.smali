.class final Lrx/subjects/ReplaySubject$UnboundedReplayState;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ReplaySubject.java"

# interfaces
.implements Lrx/subjects/ReplaySubject$ReplayState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnboundedReplayState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lrx/subjects/ReplaySubject$ReplayState",
        "<TT;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile terminated:Z


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .prologue
    .line 452
    .local p0, "this":Lrx/subjects/ReplaySubject$UnboundedReplayState;, "Lrx/subjects/ReplaySubject$UnboundedReplayState<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 447
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->nl:Lrx/internal/operators/NotificationLite;

    .line 453
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->list:Ljava/util/ArrayList;

    .line 454
    return-void
.end method


# virtual methods
.method public accept(Lrx/Observer;I)V
    .registers 5
    .param p2, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer",
            "<-TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 465
    .local p0, "this":Lrx/subjects/ReplaySubject$UnboundedReplayState;, "Lrx/subjects/ReplaySubject$UnboundedReplayState<TT;>;"
    .local p1, "o":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v1, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    .line 466
    return-void
.end method

.method public complete()V
    .registers 3

    .prologue
    .line 470
    .local p0, "this":Lrx/subjects/ReplaySubject$UnboundedReplayState;, "Lrx/subjects/ReplaySubject$UnboundedReplayState<TT;>;"
    iget-boolean v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->terminated:Z

    if-nez v0, :cond_15

    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->terminated:Z

    .line 472
    iget-object v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$UnboundedReplayState;->getAndIncrement()I

    .line 475
    :cond_15
    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 478
    .local p0, "this":Lrx/subjects/ReplaySubject$UnboundedReplayState;, "Lrx/subjects/ReplaySubject$UnboundedReplayState<TT;>;"
    iget-boolean v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->terminated:Z

    if-nez v0, :cond_15

    .line 479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->terminated:Z

    .line 480
    iget-object v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$UnboundedReplayState;->getAndIncrement()I

    .line 483
    :cond_15
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 539
    .local p0, "this":Lrx/subjects/ReplaySubject$UnboundedReplayState;, "Lrx/subjects/ReplaySubject$UnboundedReplayState<TT;>;"
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$UnboundedReplayState;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public latest()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/subjects/ReplaySubject$UnboundedReplayState;, "Lrx/subjects/ReplaySubject$UnboundedReplayState<TT;>;"
    const/4 v2, 0x0

    .line 563
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$UnboundedReplayState;->get()I

    move-result v0

    .line 564
    .local v0, "idx":I
    if-lez v0, :cond_30

    .line 565
    iget-object v3, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->list:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 566
    .local v1, "o":Ljava/lang/Object;
    iget-object v3, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, v1}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    iget-object v3, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, v1}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 567
    :cond_1f
    const/4 v3, 0x1

    if-le v0, v3, :cond_30

    .line 568
    iget-object v2, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v3, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->list:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 574
    .end local v1    # "o":Ljava/lang/Object;
    :cond_30
    :goto_30
    return-object v2

    .line 572
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_31
    iget-object v2, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, v1}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_30
.end method

.method public next(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 458
    .local p0, "this":Lrx/subjects/ReplaySubject$UnboundedReplayState;, "Lrx/subjects/ReplaySubject$UnboundedReplayState<TT;>;"
    .local p1, "n":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->terminated:Z

    if-nez v0, :cond_12

    .line 459
    iget-object v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$UnboundedReplayState;->getAndIncrement()I

    .line 462
    :cond_12
    return-void
.end method

.method public replayObserver(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/subjects/ReplaySubject$UnboundedReplayState;, "Lrx/subjects/ReplaySubject$UnboundedReplayState<TT;>;"
    .local p1, "observer":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<-TT;>;"
    const/4 v2, 0x0

    .line 493
    monitor-enter p1

    .line 494
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->first:Z

    .line 495
    iget-boolean v3, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    if-eqz v3, :cond_b

    .line 496
    monitor-exit p1

    .line 504
    :goto_a
    return v2

    .line 498
    :cond_b
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_25

    .line 500
    invoke-virtual {p1}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->index()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 501
    .local v1, "lastEmittedLink":Ljava/lang/Integer;
    if-eqz v1, :cond_28

    .line 502
    invoke-virtual {p0, v1, p1}, Lrx/subjects/ReplaySubject$UnboundedReplayState;->replayObserverFromIndex(Ljava/lang/Integer;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 503
    .local v0, "l":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->index(Ljava/lang/Object;)V

    .line 504
    const/4 v2, 0x1

    goto :goto_a

    .line 498
    .end local v0    # "l":I
    .end local v1    # "lastEmittedLink":Ljava/lang/Integer;
    :catchall_25
    move-exception v2

    :try_start_26
    monitor-exit p1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v2

    .line 506
    .restart local v1    # "lastEmittedLink":Ljava/lang/Integer;
    :cond_28
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to find lastEmittedLink for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public replayObserverFromIndex(Ljava/lang/Integer;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Ljava/lang/Integer;
    .registers 5
    .param p1, "idx"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<-TT;>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 512
    .local p0, "this":Lrx/subjects/ReplaySubject$UnboundedReplayState;, "Lrx/subjects/ReplaySubject$UnboundedReplayState<TT;>;"
    .local p2, "observer":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<-TT;>;"
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 513
    .local v0, "i":I
    :goto_4
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$UnboundedReplayState;->get()I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 514
    invoke-virtual {p0, p2, v0}, Lrx/subjects/ReplaySubject$UnboundedReplayState;->accept(Lrx/Observer;I)V

    .line 515
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 518
    :cond_10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic replayObserverFromIndex(Ljava/lang/Object;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .prologue
    .line 446
    .local p0, "this":Lrx/subjects/ReplaySubject$UnboundedReplayState;, "Lrx/subjects/ReplaySubject$UnboundedReplayState<TT;>;"
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lrx/subjects/ReplaySubject$UnboundedReplayState;->replayObserverFromIndex(Ljava/lang/Integer;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public replayObserverFromIndexTest(Ljava/lang/Integer;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;J)Ljava/lang/Integer;
    .registers 6
    .param p1, "idx"    # Ljava/lang/Integer;
    .param p3, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<-TT;>;J)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 523
    .local p0, "this":Lrx/subjects/ReplaySubject$UnboundedReplayState;, "Lrx/subjects/ReplaySubject$UnboundedReplayState<TT;>;"
    .local p2, "observer":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<-TT;>;"
    invoke-virtual {p0, p1, p2}, Lrx/subjects/ReplaySubject$UnboundedReplayState;->replayObserverFromIndex(Ljava/lang/Integer;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replayObserverFromIndexTest(Ljava/lang/Object;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;J)Ljava/lang/Object;
    .registers 6
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    .param p3, "x2"    # J

    .prologue
    .line 446
    .local p0, "this":Lrx/subjects/ReplaySubject$UnboundedReplayState;, "Lrx/subjects/ReplaySubject$UnboundedReplayState<TT;>;"
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lrx/subjects/ReplaySubject$UnboundedReplayState;->replayObserverFromIndexTest(Ljava/lang/Integer;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;J)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 5

    .prologue
    .line 528
    .local p0, "this":Lrx/subjects/ReplaySubject$UnboundedReplayState;, "Lrx/subjects/ReplaySubject$UnboundedReplayState<TT;>;"
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$UnboundedReplayState;->get()I

    move-result v0

    .line 529
    .local v0, "idx":I
    if-lez v0, :cond_20

    .line 530
    iget-object v2, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->list:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 531
    .local v1, "o":Ljava/lang/Object;
    iget-object v2, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, v1}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    iget-object v2, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, v1}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 532
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    .line 535
    .end local v0    # "idx":I
    .end local v1    # "o":Ljava/lang/Object;
    :cond_20
    return v0
.end method

.method public terminated()Z
    .registers 2

    .prologue
    .line 487
    .local p0, "this":Lrx/subjects/ReplaySubject$UnboundedReplayState;, "Lrx/subjects/ReplaySubject$UnboundedReplayState<TT;>;"
    iget-boolean v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->terminated:Z

    return v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/subjects/ReplaySubject$UnboundedReplayState;, "Lrx/subjects/ReplaySubject$UnboundedReplayState<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    .line 544
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$UnboundedReplayState;->size()I

    move-result v1

    .line 545
    .local v1, "s":I
    if-lez v1, :cond_2f

    .line 546
    array-length v2, p1

    if-le v1, v2, :cond_1b

    .line 547
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p1, v2

    check-cast p1, [Ljava/lang/Object;

    .line 549
    :cond_1b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1c
    if-ge v0, v1, :cond_29

    .line 550
    iget-object v2, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v0

    .line 549
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 552
    :cond_29
    array-length v2, p1

    if-le v2, v1, :cond_2e

    .line 553
    aput-object v3, p1, v1

    .line 559
    .end local v0    # "i":I
    :cond_2e
    :goto_2e
    return-object p1

    .line 556
    :cond_2f
    array-length v2, p1

    if-lez v2, :cond_2e

    .line 557
    const/4 v2, 0x0

    aput-object v3, p1, v2

    goto :goto_2e
.end method
