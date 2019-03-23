<div id="M-Insert-1" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <i align="right">{{ $_ENV['APP_NAME'] }}</i>
            </div>
            <div class="modal-body">
                @yield('content-M1')
            </div>
            <div class="modal-footer">
                @yield('footer-M1')
            </div>
        </div>
    </div>
</div>