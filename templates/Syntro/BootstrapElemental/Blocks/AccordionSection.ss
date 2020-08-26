
<div class="py-5 container text-center">
    <div class="row justify-content-center">
        <% if ShowTitle || Content %>
            <div class="col-12 col-md-10 col-lg-8 mb-4">
                <% if ShowTitle %>
                    <h2 class="mb-4">$Title</h2>
                <% end_if %>
                <% if $Content %>
                    <p>$Content</p>
                <% end_if %>
            </div>
        <% end_if %>
        <div class="w-100"></div>

        <div class="col-12">
            <div class="accordion shadow" id="accordion-$ID">
                <% loop AccordionPanels %>
                    <div class="card">
                        <div class="card-header" id="accordion-{$Up.ID}-button-$ID">
                            <h3 class="mb-0">
                            <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#accordion-{$Up.ID}-panel-$ID" aria-expanded="false" aria-controls="accordion-{$Up.ID}-panel-$ID">$Title</button>
                            </h3>
                        </div>
                        <div class="collapse" id="accordion-{$Up.ID}-panel-$ID" aria-labelledby="accordion-{$Up.ID}-button-$ID" data-parent="#accordion-$Up.ID">
                            <div class="card-body text-left">
                                <div class="row align-items-center">
                                    <% if Image %>
                                        <div class="col-12 col-md-6 col-lg-4 col-xl-3 mb-3 mb-md-0">
                                            <img src="$Image.Fit(800,800).URL" alt="$Title" class="img-fluid rounded shadow">
                                        </div>
                                    <% end_if %>
                                    <div class="col">
                                        $Content
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <% end_loop %>
            </div>
        </div>
    </div>
</div>
